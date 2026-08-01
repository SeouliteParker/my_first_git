FROM node:18-alpine
WORKDIR /app
RUN mkdir -p /app/data
COPY app/package.json .
RUN npm install
COPY app/app.js .
EXPOSE 3000
CMD ["node", "app.js"]
