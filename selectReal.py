#async all msg
import requests
import json
import time
import random
import sys
import codecs

global maxid
maxid = 0
global topN
topN = True





def share_code():
    code_list = []
    with open('sh_info.txt', 'r') as file:
        for code in file.readlines():
            code_list.append(code.strip())
            
    return  code_list      

def send_code(code_list):
    today1 = str(time.strftime('%Y-%m-%d', time.localtime(time.time())))
    time1 = str(time.strftime('%H:%M:%S', time.localtime(time.time())))   
    print(today1,time1)
    szzs = get_one_page('http://push2.eastmoney.com/api/qt/stock/get?secid=1.000001&ut=bd1d9ddb04089700cf9c27f6f7426281&fields=f57,f58,f59,f107,f43,f169,f170,f135,f136,f137,f193,f138,f139,f140,f194,f141,f142,f143,f195,f144,f145,f146,f196,f147,f148,f149,f197&invt=2')
    szzsjson = json.loads(szzs)
    print(szzsjson.get("data").get("f57"),szzsjson.get("data").get("f58"),szzsjson.get("data").get("f169")/100,szzsjson.get("data").get("f43")/100,str(szzsjson.get("data").get("f170")/100)+'%')
    for code in code_list:
        rettxt=""
        if code[:2] == '60':
            sh_url = 'http://nufm.dfcfw'+'.com/EM_Finance2014NumericApplication/JS.aspx?type=CT&cb=var%20pie_data=&js=(x)&sty=CTBF&token=28758b27a75f62dc3065b81f7facb365&cmd='+str(code)+'1'
            rettxt = get_one_page(sh_url)
        else:
            sz_url = 'http://nufm.dfcfw'+'.com/EM_Finance2014NumericApplication/JS.aspx?type=CT&sty=CTBF&cb=var%20pie_data=&js=(x)&token=28758b27a75f62dc3065b81f7facb365&cmd='+str(code)+'2'
            rettxt = get_one_page(sz_url)
        
        if rettxt is not None:
            rettxt = rettxt[14:64]
        
        if len(rettxt) > 0:
            data = rettxt.split(',')
            name=data[2]
            code=data[1]
            now=data[3]
            rise=data[4]
            print(code,name,now,rise)
#y1(name,code,now,rise,changehands,amplitude,priceearnings,marketrate,date) values("{name}","{code}","{now}","{rise}","{changehands}","{amplitude}","{priceearnings}","{marketrate}","{date}")'
#.format(name=data[2],code=data[1],now=data[25],rise=data[29],changehands=data[37],amplitude=data[50],priceearnings=data[38],marketrate=data[43],date=date


def get_one_page(url):
    
	
    response = requests.get(url+'&_c='+str(time.time()))
    #print(response.status_code)
    if response.status_code == 200:
        return response.text
    return None

   
def main():
    sys.stdout = codecs.getwriter("utf-8")(sys.stdout.detach())
    while True:
        
        a = random.randint(5,8)
        code_list = share_code()
        send_code(code_list)
        #print('ready to sleep :%s s' % (a))
        time.sleep(a)
     
main()
