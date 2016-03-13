FROM resin/rpi-raspbian:jessie

RUN 	apt-get update \
	&& apt-get install libfontconfig

ARG	VERSION=2.6.0

ADD 	https://github.com/heziegl/rpi-grafana-build/raw/master/dist-v$VERSION/grafana-$VERSION.linux-arm.tar.gz /grafana.tar.gz

RUN	tar -xf /grafana.tar.gz \
	&& rm /grafana.tar.gz \
	&& mv /grafana-$VERSION /grafana

#VOLUME 	["/var/lib/grafana", "/var/log/grafana", "/etc/grafana"]
#CMD 	/usr/sbin/grafana-server --homepath=/usr/share/grafana --config=/etc/grafana/grafana.ini 

ARG	PORT=3000

EXPOSE	$PORT

VOLUME  ["/var/lib/grafana", "/var/log/grafana", "/etc/grafana"]
CMD     /grafana/bin/grafana-server --homepath=/grafana --config=/etc/grafana/grafana.ini


