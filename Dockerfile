FROM resin/rpi-raspbian:jessie

RUN	apt-get update \
	&& apt-get install libfontconfig

ARG	VERSION=3.0.1

ADD	https://github.com/heziegl/rpi-grafana-build/raw/master/dist-$VERSION/grafana-$VERSION-.linux-arm.tar.gz /grafana.tar.gz

RUN	tar -xf /grafana.tar.gz \
	&& rm /grafana.tar.gz \
	&& mv /grafana-$VERSION- /grafana

ARG	PORT=3000

EXPOSE	$PORT

VOLUME  ["/data", "/etc/grafana"]
CMD     /grafana/bin/grafana-server --homepath=/grafana --config=/etc/grafana/grafana.ini


