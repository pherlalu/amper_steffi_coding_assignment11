# pull official base image
FROM node:lts-bookworm

# set working directory
WORKDIR /amper_steffi_site/

# install app dependencies
COPY public/ /amper_steffi_site/public
COPY src/ /amper_steffi_site/src
COPY package.json /amper_steffi_site/
RUN npm install

# start app
CMD ["npm", "start"]