# Renew Certificate
docker run -it --rm --name certbot \
    -v "/root/deploy/certbot/ssl:/etc/letsencrypt" \
    -v "/root/deploy/wordpress/src:/var/www/html" \
    certbot/certbot certonly -n --no-eff-email --email zhzosh@gmail.com --agree-tos --webroot -w /var/www/html -d blog.azbit.cn

# reload nginx
docker restart nginx-${USER}
