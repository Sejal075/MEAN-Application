FROM node:18 AS build
WORKDIR /app
COPY . .
RUN npm run build

FROM nginx:alpine AS production
COPY --from=build /app/dist/angular.json /usr/share/nginx/html
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
