#async all msg
import requests
from pyquery import PyQuery as pq
import json
import pymysql
import time
import random
import win32api,win32con

global maxid
maxid = 0
global topN
topN = True
 
def get_one_page(url):
    f = open("xqck.txt", "r")
    cktxt = f.read()
    f.close()
    headers = {
        'Accept': '*/*',
        'Accept-Encoding': 'gzip, deflate, br',
        'Accept-Language': 'zh-CN,zh;q=0.9',
        'Connection': 'keep-alive',
        'Cookie': cktxt,
        'elastic-apm-traceparent':'00-0695e56d1fc84bc362baf06ded0e333a-995f5a99982d2ef7-01',
        'Host': 'xueqiu.com',
        'Referer': 'https://xueqiu.com/u/2404483727',
        'Sec-Fetch-Mode': 'cors',
        'Sec-Fetch-Site': 'same-origin',
        'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36',
                      'X-Requested-With': 'XMLHttpRequest'
    }

    response = requests.get(url, headers=headers)
    #print(response.status_code)
    if response.status_code == 200:
        return response.text
    return None


     
        
 
def getFb():
    cur = 1
    #get the 1st page 
    print("request page ",cur)
    #最近3比
    url = 'https://xueqiu.com/cubes/rebalancing/history.json?cube_symbol=ZH2024808&count=20&page=1'
    html = get_one_page(url)
    json_data = json.loads(html)
    allContent = json_data.get('list')
    curMaxId = 0
    rf = 0
    
    for row in allContent:
        if rf >= 3:
            break
        statusStr = str(row.get('status'))
        rf = rf+1
        global maxid
        global topN
        tt=0
        curid =int(row.get('id'))
        if statusStr == 'success' and (curid>maxid or bool(topN)):
            tt = tt+1
            if curMaxId < curid:
                curMaxId = curid
            lines = row.get('rebalancing_histories')
            timeint = int(row.get('created_at'))/1000
            timec = time.strftime("%Y-%m-%d %H:%M:%S",(time.localtime(timeint)))
            print(timec)
            for line in lines:
                names = line.get('stock_name')
                fromS = line.get('prev_weight_adjusted')
                toS = line.get('target_weight')
                price = line.get('price')
                #print(' %s from %s %  to %s %,price %s ' % (str(names),str(fromS),str(toS),str(price)))
                
                print(' %s from %s to %s ,price %s' % (names,fromS,toS,price))
               
    if maxid < curMaxId:
           
        maxid = curMaxId
    topN = False
    print("maxid is",maxid)
    if tt >0:
        win32api.MessageBox(0, "has new msg:wngn", "wngn",win32con.MB_OK)
def deal_start():
   
   
    getFb()
    print('getFb end')
   
    
    
   
def main():
    while True:
        a = random.randint(120,300)
        deal_start()
        print('ready to sleep :%s s' % (a))
        time.sleep(a)
main()
