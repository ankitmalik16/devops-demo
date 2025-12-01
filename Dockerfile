From node:18-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=production
COPY . .
expose 3000
CMD ["npm", "start"]
