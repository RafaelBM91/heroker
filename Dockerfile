# FROM    node:latest
# RUN     apt-get update
# RUN     apt-get install nginx --assume-yes
# RUN     apt-get install libglu1 --assume-yes
# RUN     npm install strapi@alpha -g
# COPY    nginx /etc/nginx
# WORKDIR /var/app
# COPY    commands /home/commands
# COPY    app /var/app
# RUN     sh /home/commands/prepare.sh
# CMD     ["sh","-c","echo $PORT"]

FROM    node:latest
WORKDIR /var/app
COPY    app/ecomrc .
# RUN     sh run.sh
CMD    ["sh","-c","npm run develop" ]

