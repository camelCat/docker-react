FROM node:alpine
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
<<<<<<< HEAD

FROM nginx
COPY --from=0 /app/build /usr/share/nginx/html
=======
>>>>>>> 6cac22fac82657d1ed53749a420c03c62cf9928f
