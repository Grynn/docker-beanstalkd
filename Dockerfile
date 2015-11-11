FROM grynn/ubuntu
MAINTAINER Vishal Doshi <vishal.doshi@gmail.com>

ADD install.sh /tmp/install.sh
RUN chmod +x /tmp/install.sh
RUN sync 

#/tmp/install.sh clean up after itself, so no need to rm it.
RUN /tmp/install.sh


EXPOSE 11300
CMD ["beanstalkd", "-p", "11300"]
