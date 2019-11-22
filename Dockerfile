FROM    node:latest
WORKDIR /var/app
COPY    app/ecomrc .
EXPOSE  1337
CMD     ["npm", "start"]
