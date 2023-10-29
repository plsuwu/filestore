FROM php:fpm

# install nginx
RUN apt-get update && \
    apt-get install -y nginx openssl apt-transport-https ca-certificates curl gnupg lsb-release && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list && \
    apt-get update && \
    apt-get install -y docker-ce-cli && \
    rm -rf /var/lib/apt/lists/*

# generate self-signed dummy ssl cert to allow CORS with ngrok
RUN mkdir -p /etc/nginx/ssl && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj "/C=AU/ST=Denial/L=Springfield/O=Dis/CN=www.example.com"

# copy nginx config & files
COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /var/www/html/
COPY . .

RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# start server
CMD ["bash", "-c", "nginx && php-fpm"]
