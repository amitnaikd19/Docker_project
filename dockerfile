FROM amazonlinux
MAINTAINER Gubber@gmail.com
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/dgital.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip dgital.zip
RUN cp -rvf digital-agency-html-template/* .
RUN rm -rf digital-agency-html-template dgital.zip
CMD ["/usr/sbin/httpd,"D","FOREGROUND"}
EXPOSE 80
