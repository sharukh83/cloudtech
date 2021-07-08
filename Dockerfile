FROM centos:latest
MAINTAINER srk86086@gmail.com
RUN yum install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page267/jof.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip jof.zip
RUN cp -rvf jof/* 
RUN rm -rf  jof jof.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
