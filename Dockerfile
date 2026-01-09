FROM nginx:alpine
# Removemos as linhas de config customizada por enquanto
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
