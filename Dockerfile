FROM travissouth/box

MAINTAINER Irvin Capagcuan <irvin@capagcuan.org>

COPY . /build

WORKDIR /build

RUN composer install \
	&& box build

VOLUME /app

WORKDIR /app

ENTRYPOINT ["php", "/build/cliche.phar"]

CMD ["list"]
