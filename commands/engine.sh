echo "**********************************************"
echo "${DATABASE_HOST}"
echo "${DATABASE_PORT}"
echo "${DATABASE_SRV}"
echo "${DATABASE_NAME}"
echo "${DATABASE_USERNAME}"
echo "${DATABASE_PASSWORD}"
echo "${DATABASE_SSL}"
echo "${NODE_ENV}"
echo "${PORT}"
echo "**********************************************"
cd /home/commands
sed -i "s/<PORT>/${PORT}/g" /etc/nginx/nginx.conf
service nginx restart
# cd /var/app/ecomrc
# setsid npm start >/dev/null 2>&1 < /dev/null &
# cd /var/app/front
# setsid npm start >/dev/null 2>&1 < /dev/null
# npm start
