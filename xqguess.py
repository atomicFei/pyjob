#async all msg
import requests

import json

import time
import random

import sys
import codecs

global maxid
global topN
topN = 5
 
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

 
def getFb(cur,count,destMinNum,destMaxNum,wcon):

    #get the 1st page 
    print("request page ",cur)

    url = 'https://xueqiu.com/statuses/comments.json?id=146656173&count='+str(count)+'&reply=true&asc=false&type=status&split=true&page='+str(cur)
    html = get_one_page(url)
    retarr = []

    json_data = json.loads(html)
    allContent = json_data.get('comments')
    doguess(allContent,destMinNum,destMaxNum,wcon)
     
def doguess(contents,destMinNum,destMaxNum,wcon) :
    
    for con in contents:
        uid = con.get('user_id')
        descp = con.get('text')
        
        timeb = con.get('created_at')
        timeint = int(timeb)/1000
        timec = time.strftime("%Y-%m-%d %H:%M:%S",(time.localtime(timeint)))
        uname = con.get('user').get('screen_name')
        
        
        ret = dogoal(destMinNum,destMaxNum,descp)
        ss = "##"+str(uid)+"##"+uname+"##"+timec+"##"+descp+"##ret="+str(ret)
        print("##",uid,"##",uname,"##",timec,"##",descp,"##",str(ret))
        if ret == 1:
            wcon.append(ss)
        
   
    
def wfile(contents,destStr):
	timec = time.strftime("%Y-%m-%d_%H_%M_%S",(time.localtime(int(time.time()))))
	f= open("guess"+ str(timec)+".txt","w+")
	for row in contents:
		if row.find(destStr) != -1 :
                    row = row+",best goal"
		f.write("\r\n %s" % row)
	f.close()
def dogoal(destMinNum,destMaxNum,content):
    ret = 0
    for i in range(destMinNum,destMaxNum+1):
        
        if content.find(str(i)) != -1:
            
            ret = 1
            break
    return ret

def main():
    sys.stdout = codecs.getwriter("utf-8")(sys.stdout.detach())
    #竞猜总条数 must
    count = 1469
    
    #竞猜区间 must
    destMinNum = 2780
    destMaxNum = 2785
    destStr="2783.0"
    
    wcon =[]
    maxpage=0
    #每次50 不能再多了
    pagesize = 50
    if count%pagesize == 0:
        maxpage = count/pagesize
    else:
        maxpage = count/pagesize+1
    maxpage = int(maxpage)
    print("req all page is ",maxpage)
    for i in range(1,maxpage+1):
        getFb(i,pagesize,destMinNum,destMaxNum,wcon)
        time.sleep(1)
    wfile(wcon,destStr)	 
    
main()
