FROM php:fpm

# install nginx
RUN apt-get update && \
    apt-get install -y nginx apt-transport-https ca-certificates curl gnupg lsb-release && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list && \
    apt-get update && \
    apt-get install -y docker-ce-cli && \
    rm -rf /var/lib/apt/lists/*

# copy nginx config & files
COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /var/www/html/
COPY . .

RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# start server
CMD ["bash", "-c", "nginx && php-fpm"]