# RevsocksWithHttp
運用 revsocks 架設 reverse socks5 server。
為因應 windows 預設不支援 socks5，使用 hpts 將 http proxy 轉換為 socks5 協定。

# Demo
* Docker (socks5:1080, http-proxy:8080, reverse-socks5:8443)
  * `docker run -it -p1080:1080 -p8080:8080 -p8443:8443 sealpapapa/revsockshttp`
  
* VPS
  * `hpts -s 127.0.0.1:1080 -l 0.0.0.0 -p 8080`
  * `./revsocks -listen :8443 -socks 0.0.0.0:1080 -pass Password1234`

* Target Machine
  * `revsocks.exe -connect <VPS-IP>:8443 -pass Password1234 -recn 0 -rect 5`

# Reference
* https://github.com/kost/revsocks
* https://github.com/oyyd/http-proxy-to-socks