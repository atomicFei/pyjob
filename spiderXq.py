import requests
from pyquery import PyQuery as pq
import json
def get_one_page(url):
    headers = {
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3',
        'Accept-Encoding': 'gzip, deflate, br',
        'Accept-Language': 'zh-CN,zh;q=0.9',
        'Cache-Control': 'max-age=0',
        'Connection': 'keep-alive',
        'Host': 'xueqiu.com',
        'Sec-Fetch-Mode': 'navigate',
        'Sec-Fetch-Site': 'none',
        'Sec-Fetch-User': '?1',
        'Upgrade-Insecure-Requests': '1',
        'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36'


}

    response = requests.get(url,headers=headers)
    print(response.status_code)
    if response.status_code == 200:
        return response.text
    return None


def parse_page(html):
    doc = pq(html)
    divname=doc('.content--description')
    print(divname.text())

def psql(allContent):
    db = pymysql.connect(host='127.0.0.1',user='root',password='root',port=3306,db='afxq')
    cursor = db.cursor()
    sql = 'insert into xqfb(tid,uid,time_before,uname,descp) values (%s,%s,%s,%s,%s)'
    try:
        for con in allContent:
            print(con)
            tid = con.get('id')
            uid = con.get('user_id')
            descp = con.get('text')
            timeb = con.get('time_before')
            uname = con.get('user').get('screen_name')
            cursor.execute(sql,(tid,uid,timeb,uname,descp))
        
        db.commit()
    except Exception as e:
        print('error',e)
        db.rollback()
    db.close()

def parse_json(jsonstr):
    print(jsonstr)
    json_data=json.loads(jsonstr)
    max_page = json_data.get('maxPage')
    cur_page = json_data.get('page')
    print("maxPage",max_page)
    print('curPage',cur_page)
    allContent = json_data.get('statuses')
    psql(allContent)

def main():
    url='https://xueqiu.com/v4/statuses/user_timeline.json?page=2&user_id=2404483727&_=1567581475819'
    html = get_one_page(url)
    parse_json(html)

main()
