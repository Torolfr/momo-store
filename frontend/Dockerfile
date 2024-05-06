#build
FROM node:16.20.0-alpine3.18 as builder
WORKDIR /usr/src/app
COPY . .
RUN npm install && NODE_ENV=production VUE_APP_API_URL=http://backend:8081 npm run build

#release
FROM nginx:1.23-alpine
COPY --from=builder /usr/src/app/dist/frontend /usr/share/nginx/html
COPY --from=builder /usr/src/app/nginx.tmpl /etc/nginx/conf.d/default.conf
EXPOSE 80