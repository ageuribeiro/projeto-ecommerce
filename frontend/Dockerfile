# Build
FROM node:20 AS build
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

# Etapa em produção com nginx
FROM nginx:alpine

# Copia o build do React para o nginx
COPY --from=build /app/build /usr/share/nginx/html

# Copia o arquivo de config
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
