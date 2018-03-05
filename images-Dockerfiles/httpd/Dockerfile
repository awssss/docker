#raghudevops25/httpd:v1
FROM centos
RUN yum install httpd -y 
#RUN echo "<h1>Hello World</h1>" >/var/www/html/index.html
ADD index.html /var/www/html/index.html
CMD /usr/sbin/httpd -DFOREGROUND
