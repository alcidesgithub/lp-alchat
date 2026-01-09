FROM nginx:alpine
# Copia seus HTMLs
COPY *.html /usr/share/nginx/html/
# Copia o seu arquivo de configuração personalizado
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8181
CMD ["nginx", "-g", "daemon off;"]
