FROM ubi7
MAINTAINER Szabó Gergely <szabogergely100@gmail.com>
LABEL description="Neptun: C3BOW2"
RUN yum install -y httpd && \
    yum clean all
COPY index.html /var/www/html/
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]

