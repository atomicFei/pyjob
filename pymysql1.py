import requests
from pyquery import PyQuery as pq
import pymysql

def get_one_page(url):
    headers = {
        'User-Agent':'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36'
    }

    response = requests.get(url,headers=headers)
    if response.status_code == 200:
        return response.text
    return None


def parse_page(html):
    doc = pq(html)
    divname=doc('div.board-item-content')
    print(divname.text())

def psql():
    db = pymysql.connect(host='127.0.0.1',user='root',password='root',port=3306,db='afxq')
    cursor = db.cursor()
    sql = 'insert into xqfb(tid,uid,time_before,uname,descp) values (%s,%s,%s,%s,%s)'
    try:
        print(sql)
        cursor.execute(sql,('a','b','c','d','e'))
        db.commit()
    except Exception as e:
        print('error',e)
        db.rollback()
    db.close()


def main():
    url = 'https://maoyan.com/board/4'
    psql()
    


main()
