import requests
from pyquery import PyQuery as pq

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

def main():
    url = 'https://maoyan.com/board/4'
    html = get_one_page(url)
    parse_page(html)


main()
