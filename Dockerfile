FROM busybox:latest
MAINTAINER megamanics <github.com/megamanics>
WORKDIR /home
RUN wget http://www.magicermine.com/demos/curl/curl/curl-7.30.0.ermine.tar.bz2
ADD curl-7.30.0.ermine.tar.bz2 .
RUN mv /home/curl-7.30.0.ermine/curl.ermine /bin/curl && rm -Rf /home/curl-7.30.0.ermine
CMD ["/bin/sh"]
