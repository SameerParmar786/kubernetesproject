FROM centos:latest
MAINTAINER sparamr193@gmai.com
RUN yum install -y httpd \ 
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip   /var/www/html
WORKDIR /var/www/html
RUN unzip louxury.zip
RUN cp -rvf loxury/*
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
