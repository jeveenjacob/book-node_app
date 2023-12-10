FROM node:16-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install -g
COPY . .
EXPOSE 3000
CMD ["node", "dist/index.js"]
