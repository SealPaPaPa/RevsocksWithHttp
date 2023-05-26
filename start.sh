hpts -s 127.0.0.1:1080 -l 0.0.0.0 -p 8080 &
/revsocks/revsocks -listen :8443 -socks 127.0.0.1:1080 -pass Password1234

