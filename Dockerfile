FROM    node:latest
WORKDIR /var/app
COPY    src/package.json package.json
COPY    .env .env
RUN     npm install
# Add your source files
COPY    ./src/app ./app
CMD     ["npm","start"]
