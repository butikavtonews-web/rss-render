# Minimal PHP + RSS-Bridge runtime via Apache
FROM php:8.2-apache
RUN apt-get update && apt-get install -y git unzip && rm -rf /var/lib/apt/lists/*
# Install composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
# Get RSS-Bridge
RUN git clone --depth=1 https://github.com/RSS-Bridge/rss-bridge.git /var/www/html
WORKDIR /var/www/html
RUN composer install --no-dev --prefer-dist --no-interaction || true
EXPOSE 80
