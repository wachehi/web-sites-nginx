FROM ubuntu
MAINTAINER ALI (wachehi@hotmail.com)
ENV PORT="80"
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
RUN rm -Rf /var/www/html/*
COPY . /var/www/html/
RUN git clone https://github.com/wachehi/web-sites-nginx.git   /var/wwww/html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
