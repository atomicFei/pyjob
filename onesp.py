import requests
from pyquery import PyQuery as pq
import json
import pymysql
import time


def get_one_page(url):
    headers = {
        'Accept': '*/*',
        'Accept-Encoding': 'gzip, deflate, br',
        'Accept-Language': 'zh-CN,zh;q=0.9',
        'Connection': 'keep-alive',
       # 'Cookie': 'aliyungf_tc=AQAAAEgtcXTHsQEAmddze2qeancwqH7y; acw_tc=2760828e15676133631163700e90c24199ee490a4272efb9205842a994ed1e; xq_a_token=75661393f1556aa7f900df4dc91059df49b83145; xq_r_token=29fe5e93ec0b24974bdd382ffb61d026d8350d7d; u=511567613405209; device_id=24700f9f1986800ab4fcc880530dd0ed; s=bu16icv1dr',
        'Cookie': 'device_id=24700f9f1986800ab4fcc880530dd0ed; s=dl13zdk4n4; bid=48b9509ced80b384f22ffa6a5d762be4_jytnox8p; acw_tc=2760828315660492696381975e64643e210356cbc209ac426ad3b06d9cf0e6; __utmz=1.1566538518.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); aliyungf_tc=AQAAABB17l+yvA0Aog6O25x/6Jfm3N1B; snbim_minify=true; __utmc=1; Hm_lvt_1db88642e346389874251b5a1eded6e3=1567473796,1567479963,1567498214,1567563671; __utma=1.1648318386.1566538518.1567576436.1567580856.7;
        remember.sig=K4F3faYzmVuqC0iXIERCQf55g2Y; xq_a_token.sig=3RA8Yj426ZcAtLUTGZATAroJ7hw; xqat.sig=c0_cC0hQlVxztCLmGC37Q7Bs6BY; xq_r_token.sig=fgYCIKkoocP1NzbVRMiK8SBVVbw; xq_is_login.sig=J3LxgPVPUzbBg3Kee_PquUfih7Q; u.sig=rihy0QWdVn17PoOSpKh8c9Jt_Sg; remember=1; xq_a_token=a0dc8a48d6beea4ef53bba7fe626c3d323748201; xqat=a0dc8a48d6beea4ef53bba7fe626c3d323748201; xq_r_token=30dbd300ac4b70d8054f1f6beffb1d44a2c07add; xq_is_login=1; u=1519387230;
        Hm_lpvt_1db88642e346389874251b5a1eded6e3=1567650350',
#        'elastic-apm-traceparent': '00-87b53a812b9edafa9f10a577e16a925d-37edb361a16bd248-01',
        'elastic-apm-traceparent':'00-0695e56d1fc84bc362baf06ded0e333a-995f5a99982d2ef7-01'
        'Host': 'xueqiu.com',
        'Referer': 'https://xueqiu.com/u/2404483727',
        'Sec-Fetch-Mode': 'cors',
        'Sec-Fetch-Site': 'same-origin',
        'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36',
                      'X-Requested-With': 'XMLHttpRequest'
    }

    response = requests.get(url, headers=headers)
    print(response.status_code)
    if response.status_code == 200:
        return response.text
    return None


def parse_page(html):
    doc = pq(html)
    divname = doc('.content--description')
    print(divname.text())


def psql(allContent):
    db = pymysql.connect(host='127.0.0.1', user='root', password='root', port=3306, db='afxq')
    cursor = db.cursor()
    sql = 'insert into xqfb(tid,uid,time_before,uname,descp) values (%s,%s,%s,%s,%s)'
    try:
        for con in allContent:
         #   print(con)
            tid = con.get('id')
            uid = con.get('user_id')
            descp = con.get('text')
            timeb = con.get('timeBefore')
            uname = con.get('user').get('screen_name')
            cursor.execute(sql, (tid, uid, timeb, uname, descp))

        db.commit()
    except Exception as e:
        print('error', e)
        db.rollback()
    db.close()


def parse_json(jsonstr):
    #print(jsonstr)
    json_data = json.loads(jsonstr)
    max_page = json_data.get('maxPage')
    cur_page = json_data.get('page')
   
    allContent = json_data.get('statuses')
    psql(allContent)
    return max_page

def seturl(page):
      'https://xueqiu.com/v4/statuses/user_timeline.json?page='+page+'&user_id=2404483727'
def main():
    max = 10
    
    cur = 6 
    while cur<1+1:
        print("request page ",cur)
        url = 'https://xueqiu.com/v4/statuses/user_timeline.json?page='+str(cur)+'&user_id=2404483727'
        html = get_one_page(url)
        max = parse_json(html)
        cur = cur+1
        time.sleep(3)
     

main()
