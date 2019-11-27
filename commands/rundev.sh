sed -i "s/<PORT>/${PORT}/g" /etc/nginx/nginx.conf
service nginx restart
cd /var/app/front
setsid npm run dev >/dev/null 2>&1 < /dev/null &
cd /var/app/ecomrc
setsid npm run develop >/dev/null 2>&1 < /dev/null
