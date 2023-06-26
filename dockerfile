FROM amazonlinux
MAINTAINER amitnaikd19@gmail.com
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/hightech.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip hightech.zip
RUN cp -rvf hightech-html/* .
RUN rm -rf hightech.zip hightech-html
CMD ["/usr/sbin/httpd,"D"."FOREGROUND"}
EXPOSE 80
