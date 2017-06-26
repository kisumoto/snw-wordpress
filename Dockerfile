FROM wordpress:4.8.0

RUN apt-get update && apt-get install -y libmcrypt-dev \
    && docker-php-ext-install -j$(nproc) mcrypt
