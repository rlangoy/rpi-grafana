FROM resin/rpi-raspbian:jessie

RUN	apt-get update \
	&& apt-get install libfontconfig

ARG	VERSION=3.1.1
ARG	VERSION_SUFFIX=1471857718

ADD	https://github.com/heziegl/rpi-grafana-build/raw/master/dist-$VERSION/grafana-$VERSION-$VERSION_SUFFIX.linux-arm.tar.gz /grafana.tar.gz

RUN	tar -xf /grafana.tar.gz \
	&& rm /grafana.tar.gz \
	&& mv /grafana-$VERSION-$VERSION_SUFFIX /grafana

ARG	PORT=3000

EXPOSE	$PORT

VOLUME  ["/data", "/etc/grafana"]
CMD     /grafana/bin/grafana-server --homepath=/grafana --config=/etc/grafana/grafana.ini


