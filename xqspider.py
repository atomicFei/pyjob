#async all msg
import requests
from pyquery import PyQuery as pq
import json
import pymysql
import time
import random
import socket
import sys
import codecs

global maxid
global topN
topN = 5
def getFbTop10(db):
    cursor = db.cursor()
    try:
        sql = 'select  tid from xqfb where pid = %s order by tid desc limit %s'
        cursor.execute(sql, ('-1',topN))
               
        results = cursor. fetchall()
        global maxid
        maxid=int(results[0][0])
        return results
           
    except Exception as e:
        print('error', e)

 
 
def getFbMaxRid(db):
    cursor = db.cursor()
    try:
        sql = 'select max(tid),pid   from xqfb  a where a.pid!= %s and EXISTS  ( select * from (select  tid from xqfb where pid = %s  order by tid desc limit %s) as b  where b.tid = a.pid) group by pid'
        cursor.execute(sql, ('-1','-1',topN))
        
        results = cursor. fetchall()
        return results
           
    except Exception as e:
        print('error', e)

def get_one_page(url):
    f = open("xqck.txt", "r")
    cktxt = f.read()
    f.close()
    headers = {
        'Accept': '*/*',
        'Accept-Encoding': 'gzip, deflate, br',
        'Accept-Language': 'zh-CN,zh;q=0.9',
        'Connection': 'keep-alive',
        #'Cookie': 'device_id=24700f9f1986800ab4fcc880530dd0ed; s=dl13zdk4n4; bid=48b9509ced80b384f22ffa6a5d762be4_jytnox8p; acw_tc=2760828315660492696381975e64643e210356cbc209ac426ad3b06d9cf0e6; __utmz=1.1566538518.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); aliyungf_tc=AQAAABB17l+yvA0Aog6O25x/6Jfm3N1B; snbim_minify=true; __utmc=1; Hm_lvt_1db88642e346389874251b5a1eded6e3=1567473796,1567479963,1567498214,1567563671; __utma=1.1648318386.1566538518.1567576436.1567580856.7;remember.sig=K4F3faYzmVuqC0iXIERCQf55g2Y; xq_a_token.sig=3RA8Yj426ZcAtLUTGZATAroJ7hw; xqat.sig=c0_cC0hQlVxztCLmGC37Q7Bs6BY; xq_r_token.sig=fgYCIKkoocP1NzbVRMiK8SBVVbw; xq_is_login.sig=J3LxgPVPUzbBg3Kee_PquUfih7Q; u.sig=rihy0QWdVn17PoOSpKh8c9Jt_Sg; remember=1; xq_a_token=a0dc8a48d6beea4ef53bba7fe626c3d323748201; xqat=a0dc8a48d6beea4ef53bba7fe626c3d323748201; xq_r_token=30dbd300ac4b70d8054f1f6beffb1d44a2c07add; xq_is_login=1; u=1519387230;Hm_lpvt_1db88642e346389874251b5a1eded6e3=1567650350',
        'Cookie': cktxt,
        'elastic-apm-traceparent':'00-0695e56d1fc84bc362baf06ded0e333a-995f5a99982d2ef7-01',
        'Host': 'xueqiu.com',
        'Referer': 'https://xueqiu.com/u/2404483727',
        'Sec-Fetch-Mode': 'cors',
        'Sec-Fetch-Site': 'same-origin',
        'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36',
                      'X-Requested-With': 'XMLHttpRequest'
    }
    try:
        response = requests.get(url, headers=headers)
    except Exception as e:
        time.sleep(2)
        print('url.get is error,again...')
        response = requests.get(url, headers=headers)

    #print(response.status_code)
    if response.status_code == 200:
        return response.text
    return None


        
def psqlfb(allContent,db):
    retaddtids = []
    cursor = db.cursor()
    sql = 'insert into xqfb(tid,uid,time_before,uname,descp) values (%s,%s,%s,%s,%s)'
    try:
        for con in allContent:
         #   print(con)
            tid = con.get('id')
            tidint = int(tid)
            #bigger then  the maxid,insert
            #print('psqlfb:maxid  %s,tid  %s,tidint > maxid %s' % (maxid,tidint,str(tidint > maxid)) )
            if tidint > maxid:
                uid = con.get('user_id')
                pic = con.get('pic')
                descp = con.get('text')+str(pic)
                
                timeb = con.get('created_at')
                timeint = int(timeb)/1000
                timec = time.strftime("%Y-%m-%d %H:%M:%S",(time.localtime(timeint)))
                uname = con.get('user').get('screen_name')
                cursor.execute(sql, (tid, uid, timec, uname, descp))
                print("has new msg : %s" % (descp))
                retaddtids.append(tid)
                #notify_server()
        db.commit()
    except Exception as e:
        print('error', e)
        db.rollback()
    return retaddtids 
       
def psqlreply(allContent,db,maxrid):
    
    cursor = db.cursor()
    sql = 'insert into xqfb(tid,uid,time_before,uname,descp,pid,reply_txt) values (%s,%s,%s,%s,%s,%s,%s)'
    
    try:
        for con in allContent:
         #   print(con)
            tid = con.get('id')
            tidint = int(tid)
            if tidint <= maxrid:
                continue
            uid = con.get('user_id')
            #print('uid:%s,uid==siji:%s' % (uid,str(str(uid) == '2404483727')))
            if str(uid) == '2404483727':
                
                pic = con.get('pic')
                descp = con.get('text')
                if len(pic) > 0:
                    descp = descp+str(pic)
                timeb = con.get('created_at')
                
                timeint = int(timeb)/1000
                timec = time.strftime("%Y-%m-%d %H:%M:%S",(time.localtime(timeint)))
                uname = con.get('user').get('screen_name')
                pid = con.get('root_in_reply_to_status_id')
                replytxt = ''
                if con.get('reply_comment') is None:
                    replytxt=''
                else:
                    replytxt = con.get('reply_comment').get('text')

                print(" --has new reply : %s" % (descp))
                print(" --reply src msg: %s" % (replytxt))
                cursor.execute(sql, (tid, uid, timec, uname, descp,pid,replytxt))
                notify_server()
        db.commit()
    except Exception as e:
        print('error', e)
        db.rollback()
    

def getnewreply(tid,maxrid,db):
    url = 'https://xueqiu.com/statuses/comments.json?id='+str(tid)+'&count=50&page=1&reply=true&asc=false&type=status'
    html = get_one_page(url)
    if html is  None:
        print("getnewreply html is  None")
    else:
        json_data = json.loads(html)
        allContent = json_data.get('comments')
        psqlreply(allContent,db,maxrid)
    time.sleep(1)
    
    
        
def filterdata(top10results,ridresults,retaddtids,db):
    elist = []
    notify = 0
    for row in top10results:
        elist.append(int(row[0]))
        #print("1.list = %s" % (elist))
    if len(retaddtids)>0:
        notify = 1
        for ctid in retaddtids:
            elist.append(int(ctid))
            
    for row in ridresults:
    #monitor top 10 new reply
        maxrid = row[0]
        tid = row[1]
        #print("ready to remove,tid = %s,list = %s" % (tid,elist))
        elist.remove(int(tid))
        getnewreply(int(tid),int(maxrid),db)
        
    for v in elist:
        getnewreply(int(v),0,db)

def getFb(db):
    cur = 1
    #get the 1st page 
    print("request page ",cur)
    url = 'https://xueqiu.com/v4/statuses/user_timeline.json?page='+str(cur)+'&user_id=2404483727'
    html = get_one_page(url)
    retarr = []
    
    json_data = json.loads(html)
    allContent = json_data.get('statuses')
    retarr = psqlfb(allContent,db)
    return retarr

def notify_server():
    urlp= '10.2.33.176'
    try:
        start_client(urlp)
    except Exception as e:
        print('send %s failed!' % (urlp))
    urlp= '10.2.32.176'
    try:
        start_client(urlp)
    except Exception as e:
        print('send %s failed!' % (urlp))


    
def start_client(ip):
    
    ip_port = (str(ip),9901)
    
    
def deal_start():
    db = pymysql.connect(host='127.0.0.1', user='root', password='root', port=3306, db='afxq', charset='utf8')
    
    top10results = getFbTop10(db)
    print('top10 end')
    ridresults = getFbMaxRid(db)
    print('getFbMaxRid end')
    retaddtids = getFb(db)
    print('getFb end')
    filterdata(top10results,ridresults,retaddtids,db)
    print('deal is end +++++++++++++++++++',time.strftime("%Y-%m-%d %H:%M:%S",(time.localtime())))
    
    
    db.close()
def main():
    sys.stdout = codecs.getwriter("utf-8")(sys.stdout.detach())

    while True:
        a = random.randint(120,300)
        deal_start()
        print('ready to sleep :%s s' % (a))
        time.sleep(a)
main()
