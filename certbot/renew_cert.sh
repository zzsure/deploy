# Renew Certificate
# blog.azbit.cn
docker run -it --rm --name certbot \
    -v "/root/deploy/certbot/ssl:/etc/letsencrypt" \
    -v "/root/deploy/wordpress/src:/var/www/html" \
    certbot/certbot certonly -n --no-eff-email --email zhzosh@gmail.com --agree-tos --webroot -w /var/www/html -d blog.azbit.cn

# img.azbit.cn
docker run -it --rm --name certbot \
    -v "/root/deploy/certbot/ssl:/etc/letsencrypt" \
    -v "/root/deploy/chevereto/src:/var/www/html" \
    certbot/certbot certonly -n --no-eff-email --email zhzosh@gmail.com --agree-tos --webroot -w /var/www/html -d img.azbit.cn

# fin.azbit.cn
docker run -it --rm --name certbot \
    -v "/root/deploy/certbot/ssl:/etc/letsencrypt" \
    -v "/data/certbot/log:/var/log/letsencrypt" \
    -v "/root/deploy/nginx/www/letsencrypt:/var/www/.well-known" \
    certbot/certbot certonly -n --no-eff-email --email zhzosh@gmail.com --agree-tos --webroot -w /var/www -d fin.azbit.cn

# reload nginx
docker restart nginx
