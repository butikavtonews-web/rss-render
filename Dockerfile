FROM php:8.2-cli
RUN apt-get update && apt-get install -y git unzip && rm -rf /var/lib/apt/lists/*
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

RUN git clone --depth=1 https://github.com/RSS-Bridge/rss-bridge.git /app
WORKDIR /app
RUN composer install --no-dev --prefer-dist --no-interaction || true
# Render выдаёт порт в $PORT — слушаем именно его
CMD php -S 0.0.0.0:$PORT -t .
