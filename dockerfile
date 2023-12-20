FROM centos
LABEL Email='yysachin.00@gmail.com'
#maintainer = 'Sachin Yadav'
RUN yum install httpd
RUN yum install zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip /opt/
RUN unzip /opt/neogym.zip
COPY /opt/neogym-html/* /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
