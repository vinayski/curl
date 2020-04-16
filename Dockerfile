FROM busybox:latest as slim 
MAINTAINER megamanics <github.com/megamanics>
WORKDIR /home
RUN wget http://www.magicermine.com/demos/curl/curl/curl-7.30.0.ermine.tar.bz2 && tar xvf curl-7.30.0.ermine.tar.bz2 && mv curl-7.30.0.ermine/curl.ermine /bin/curl && rm -Rf /home/curl-7.30.0.ermine

FROM scratch
COPY --from=slim /bin/curl /bin/curl
ENTRYPOINT ["/bin/curl"]
