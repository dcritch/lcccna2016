FROM registry.access.redhat.com/rhel7
MAINTAINER davidc
USER root
RUN yum -y install httpd php php-mysql php-gd mysql git
RUN git clone http://nfs.lab.tst/git/gaslog.git /gaslog
RUN rsync -avh --progress /gaslog/src/gasapp/* /var/www/html
ADD /gas.sql /gas.sql
ADD /startup.sh /startup.sh
EXPOSE 80
CMD ["/startup.sh"]
