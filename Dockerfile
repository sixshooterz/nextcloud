FROM nextcloud:latest

RUN apt-get update; \
    apt-get install -y --no-install-recommends ffmpeg smbclient imagemagick

RUN apt-get update; \
    apt-get install -y --no-install-recommends libbz2-dev libkrb5-dev libsmbclient-dev

RUN pecl install smbclient; \
    docker-php-ext-enable smbclient imagick 
