FROM php:7.4-apache
RUN apt-get update && \
    apt-get install -y \
        zlib1g-dev
RUN apt-get update \
	&& apt-get install -y \
		openssl \
		git \
		gnupg2
RUN docker-php-ext-install pdo_mysql mysqli
RUN apt-get install -y libpq-dev
RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql
RUN docker-php-ext-install pdo_pgsql
RUN apt-get update -y && apt-get install -y libpng-dev
RUN apt-get update && apt-get install -y --no-install-recommends \
  autoconf \
  build-essential \
  apt-utils \
  zlib1g-dev \
  libzip-dev \
  unzip \
  zip \
  libmagick++-dev \
  libmagickwand-dev \
  libpq-dev \
  libfreetype6-dev \
  libjpeg62-turbo-dev \
  libpng-dev \
  libonig-dev
RUN docker-php-ext-install mbstring
RUN apt-get install -y build-essential libssl-dev zlib1g-dev libpng-dev libwebp-dev libjpeg-dev libfreetype6-dev
RUN docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp
RUN docker-php-ext-install pdo_mysql mysqli
RUN docker-php-ext-install zip
RUN a2enmod rewrite headers
RUN service apache2 restart


FROM php:8.0-apache
RUN apt-get update && \
    apt-get install -y \
        zlib1g-dev
RUN apt-get update \
	&& apt-get install -y \
		openssl \
		git \
		gnupg2
RUN docker-php-ext-install pdo_mysql mysqli
RUN apt-get install -y libpq-dev
RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql
RUN docker-php-ext-install pdo_pgsql
RUN apt-get update -y && apt-get install -y libpng-dev
RUN apt-get update && apt-get install -y --no-install-recommends \
  autoconf \
  build-essential \
  apt-utils \
  zlib1g-dev \
  libzip-dev \
  unzip \
  zip \
  libmagick++-dev \
  libmagickwand-dev \
  libpq-dev \
  libfreetype6-dev \
  libjpeg62-turbo-dev \
  libpng-dev \
  libonig-dev
RUN docker-php-ext-install mbstring
RUN apt-get install -y build-essential libssl-dev zlib1g-dev libpng-dev libwebp-dev libjpeg-dev libfreetype6-dev
RUN docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp
RUN docker-php-ext-install pdo_mysql mysqli
RUN docker-php-ext-install zip
RUN a2enmod rewrite headers
RUN service apache2 restart