
FROM node:20-alpine3.17

# Create app directory and epgpub directory
RUN mkdir /src
WORKDIR /src

# Install app dependencies
ADD package.json /src/package.json
RUN npm install

#Bundle app source
COPY . /src

EXPOSE 4000

CMD npm start


CMD ["node","app.js"]