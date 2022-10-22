#Key value pair
FROM ubuntu:20.04
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install net-tools
RUN apt-get install curl -y
RUN apt-get install nginx -y
COPY ./nginx.conf /etc/nginx/sites-available/default
COPY ./index.html /var/www/html/index.nginx-debian.html
ENV NAME Suchayan
COPY . . 
WORKDIR /tmp
COPY . .
ENTRYPOINT [ "nginx","-g","daemon off;" ]
EXPOSE 8080
