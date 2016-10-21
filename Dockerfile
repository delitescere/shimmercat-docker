FROM frolvlad/alpine-glibc:alpine-3.4

RUN \
  apk update && \
  apk fetch libgmpxx && \
  apk add libgmpxx

ADD bin/* /usr/local/bin/
ADD lib/* /usr/local/lib/

VOLUME ["/srv/www/"]
WORKDIR /srv/www
ENTRYPOINT ["shimmercat"]
CMD ["devlove", "--listen", "0.0.0.0:4043"]
