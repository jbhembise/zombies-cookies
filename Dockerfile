FROM webgriffe/php-apache-base

COPY ssl/sub1.localhost.crt /etc/apache2/ssl/sub1.localhost.crt
COPY ssl/sub1.localhost.key /etc/apache2/ssl/sub1.localhost.key
COPY ssl/sub1.localhost.conf /etc/apache2/sites-enabled/sub1.localhost.conf

COPY ssl/sub2.localhost.crt /etc/apache2/ssl/sub2.localhost.crt
COPY ssl/sub2.localhost.key /etc/apache2/ssl/sub2.localhost.key
COPY ssl/sub2.localhost.conf /etc/apache2/sites-enabled/sub2.localhost.conf

COPY ssl/sub3.localhost.crt /etc/apache2/ssl/sub3.localhost.crt
COPY ssl/sub3.localhost.key /etc/apache2/ssl/sub3.localhost.key
COPY ssl/sub3.localhost.conf /etc/apache2/sites-enabled/sub3.localhost.conf

COPY ssl/sub4.localhost.crt /etc/apache2/ssl/sub4.localhost.crt
COPY ssl/sub4.localhost.key /etc/apache2/ssl/sub4.localhost.key
COPY ssl/sub4.localhost.conf /etc/apache2/sites-enabled/sub4.localhost.conf

COPY ssl/sub5.localhost.crt /etc/apache2/ssl/sub5.localhost.crt
COPY ssl/sub5.localhost.key /etc/apache2/ssl/sub5.localhost.key
COPY ssl/sub5.localhost.conf /etc/apache2/sites-enabled/sub5.localhost.conf

COPY ssl/sub6.localhost.crt /etc/apache2/ssl/sub6.localhost.crt
COPY ssl/sub6.localhost.key /etc/apache2/ssl/sub6.localhost.key
COPY ssl/sub6.localhost.conf /etc/apache2/sites-enabled/sub6.localhost.conf

COPY ssl/sub7.localhost.crt /etc/apache2/ssl/sub7.localhost.crt
COPY ssl/sub7.localhost.key /etc/apache2/ssl/sub7.localhost.key
COPY ssl/sub7.localhost.conf /etc/apache2/sites-enabled/sub7.localhost.conf

COPY ssl/sub8.localhost.crt /etc/apache2/ssl/sub8.localhost.crt
COPY ssl/sub8.localhost.key /etc/apache2/ssl/sub8.localhost.key
COPY ssl/sub8.localhost.conf /etc/apache2/sites-enabled/sub8.localhost.conf

RUN a2enmod rewrite
RUN a2enmod ssl
RUN service apache2 restart

EXPOSE 80
EXPOSE 443
