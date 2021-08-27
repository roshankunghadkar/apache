FROM ubuntu
RUN apt-get update
RUN apt-get install tzdata -y
RUN apt-get install apache2 -y
RUN echo "Heyyy there, It's me on Apache Server" > /var/www/html/index.html
RUN echo "127.0.0.1    localhost.localdomain localhost host.server4-245.com" >> /etc/hosts
RUN echo "::1          localhost.localdomain localhost host.server4-245.com" >> /etc/hosts
EXPOSE 80
CMD ["apache2ctl" , "-D" , "FOREGROUND"]
