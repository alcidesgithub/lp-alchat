FROM nginx:alpine

# Copia todos os seus arquivos HTML (index, politica, termos)
COPY *.html /usr/share/nginx/html/

# Configura o Nginx para resolver URLs sem .html
RUN echo 'server { \
    listen 80; \
    root /usr/share/nginx/html; \
    index index.html; \
    location / { \
        try_files $uri $uri.html $uri/ =404; \
    } \
}' > /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]