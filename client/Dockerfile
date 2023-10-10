FROM node:slim

WORKDIR /app
COPY package.json ./
RUN npm install

COPY . ./

# build app + set new working directory to built output
RUN npm run build
WORKDIR /app/build

CMD ["node", "index.js"]