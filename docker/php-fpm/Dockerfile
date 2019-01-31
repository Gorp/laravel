FROM  php:7.3-fpm

RUN apt-get update 
RUN  apt-get install -y zlib1g-dev libicu-dev libzip-dev libzip-dev g++
# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer --version

# Set timezone
RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/Europe/Uzghorod /etc/localtime
RUN "date"
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl

# Type docker-php-ext-install to see available extensions
RUN docker-php-ext-install  mbstring  intl bcmath zip

#RUN docker-php-ext-configure gd --with-jpeg-dir=/usr/include/
#RUN docker-php-ext-install -j$(nproc) gd

# # install redis
# RUN pecl install redis
# RUN docker-php-ext-enable redis

# # install xdebug
# RUN pecl install  xdebug-beta
# RUN docker-php-ext-enable xdebug

# RUN echo "xdebug.remote_enable=1" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
# RUN echo "xdebug.remote_connect_back=1" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
# RUN echo "error_reporting = E_ALL" > /usr/local/etc/php/php.ini \
#     && echo "display_startup_errors = On" >> /usr/local/etc/php/php.ini \
#     && echo "display_errors = On" >> /usr/local/etc/php/php.ini \
#     && echo "xdebug.remote_enable=1" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
# #    && echo "xdebug.remote_connect_back=0" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#     && echo "xdebug.remote_autostart=1" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#     && echo "xdebug.idekey=\"PHPSTORM\"" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#     && echo "xdebug.remote_port=9000" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# # install xdebug
# RUN pecl install  imagick
# RUN docker-php-ext-enable imagick

# # install mongodb
# RUN pecl install mongodb
# RUN docker-php-ext-enable mongodb


WORKDIR /var/www/html
