FROM ubuntu
MAINTAINER  sankar example.com
RUN apt-get update
RUN apt-get -y install httpd
ADD index.html /var/www/html/index.html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

