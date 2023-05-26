FROM ubuntu

RUN apt update
RUN apt upgrade -y
RUN apt install -y vim nodejs npm
RUN npm install -g http-proxy-to-socks

ADD revsocks/ /revsocks/
ADD start.sh /start.sh

EXPOSE 1080 8080 8443
CMD ["/start.sh"]
