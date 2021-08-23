FROM ubuntu
RUN apt-get update
RUN apt-get install tzdata -y
RUN apt-get install apache2 -y
RUN echo "Heyyy there, It's me on Apache Server" > /var/www/html/index.html
EXPOSE 80
CMD ["apache2ctl" , "-D" , "FOREGROUND"]
