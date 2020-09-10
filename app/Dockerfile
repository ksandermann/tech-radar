FROM node
#RUN apt-get update && apt-get upgrade -y && apt-get install yarn -y
COPY . /radar
WORKDIR /radar
RUN yarn
CMD ["yarn", "start"]
