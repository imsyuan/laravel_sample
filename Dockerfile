FROM 1and1internet/ubuntu-16-apache-php-7.2

#!/bin/bash
RUN apt-get upgrade && \
    apt-get update && \
    apt-get install -y software-properties-common  && \
    apt-get install -y php7.3 php7.3-common php7.3-mysql php7.3-cli php7.3-bz2 php7.3-curl php7.3-gd php7.3-intl php7.3-json php7.3-readline php7.3-xml php7.3-zip php7.3-fpm php7.3-bcmath php7.3-mbstring && \
    apt-get install -y npm  && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs
#    apt-get install -y php7.2-redis

EXPOSE 8080

WORKDIR /var/www/html/public
