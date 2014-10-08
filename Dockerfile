FROM ubuntu:latest
MAINTAINER Frank Rosquin <frank.rosquin@gmail.com>

RUN apt-get update &&\
        apt-get -y -q install wget &&\
        useradd -d / -M -U -c "hekad user" -s /usr/sbin/nologin heka &&\
        mkdir /etc/hekad &&\
        mkdir /var/cache/hekad &&\
        chown heka:heka /var/cache/hekad


ENV VERSION 0.7.2

RUN wget -nv -O /tmp/heka_amd64.deb https://github.com/mozilla-services/heka/releases/download/v${VERSION}/heka_${VERSION}_amd64.deb &&\
        dpkg -i /tmp/heka_amd64.deb &&\
        rm /tmp/heka_amd64.deb

ADD https://raw.githubusercontent.com/JustinJudd/heka/dev/sandbox/lua/encoders/influxdb.lua /usr/share/heka/lua_encoders/influxdb.lua

USER heka
ENTRYPOINT ["/usr/bin/hekad"]
CMD ["-config=/etc/hekad/hekad.toml"]
