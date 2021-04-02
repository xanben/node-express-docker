FROM node:15

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# package.json AND yarn.lock are copied in app directory.
COPY package.json ./
COPY yarn.lock ./

RUN yarn install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8088
CMD [ "yarn", "start" ]