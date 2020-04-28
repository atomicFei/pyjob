import requests
from pyquery import PyQuery as pq
import json
import pymysql
import time


global maxid
def getFbTop10(db):
    cursor = db.cursor()
    try:
        sql = 'select  tid from xqfb where pid = %s order by tid desc limit 10'
        cursor.execute(sql, ('-1'))
        row = cursor.fetchone()
        global maxid
        maxid=int(row[0])
        while row:
            print(row[0])
            row = cursor.fetchone()
           
    except Exception as e:
        print('error', e)

 

def getFbMaxId(db):
    cursor = db.cursor()
    try:
        sql = 'select max(tid)  from xqfb where pid = %s'
        cursor.execute(sql, ('-1'))
        row = cursor.fetchone()
        #maxid = row[0]
        
    except Exception as e:
        print('error', e)

def getFbMaxRid(db):
    cursor = db.cursor()
    try:
        sql = 'select max(tid),pid   from xqfb  a where a.pid!= %s and EXISTS  ( select * from (select  tid from xqfb where pid = %s  order by tid desc limit 10) as b  where b.tid = a.pid) group by pid'
        cursor.execute(sql, ('-1','-1'))
        
        results = cursor. fetchall()
        return results
           
    except Exception as e:
        print('error', e)

def main():
    db = pymysql.connect(host='127.0.0.1', user='root', password='root', port=3306, db='afxq')
    results = getFbMaxRid(db)
    for row in results:
        maxrid = row[0]
        tid = row[1]
        print("maxrid:%s,tid:%s" % (maxrid,tid))
    db.close()

main()
