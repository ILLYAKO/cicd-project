# build environment
FROM node AS build

WORKDIR /app

COPY frontend/package.json ./

RUN npm install

COPY frontend/ ./

# RUN npm test - if you want to test before to build
RUN npm run build

# production environment
FROM nginx:alpine AS prod
WORKDIR /usr/share/nginx/html
COPY --from=build /app/build .
EXPOSE 80
# run nginx with global directives and daemon off
# ENTRYPOINT ["nginx", "-g", "daemon off;"]
CMD ["nginx", "-g", "daemon off;"]