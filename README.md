# cr_sandbox

CMSとクローリング試し

NuxtはJAMStackを採用してみる

## 立ち上げ方

```
$ docker-compose up -d
```

## 構成

| サーバー名       | 名称 | ポート番号 |
|:-----|:-------------------------------|:-----|
| APサーバー(Nuxt)    | front | 3000 |
| CMSサーバー(Vue.js)    | cms | 1337 |
| Crawlerサーバー(scrapy) | crawler | 8888 |
| Webサーバー(Nginx)    | web | 8000, 8001 |
| DBサーバー(MySQL)    | db | 3336 |