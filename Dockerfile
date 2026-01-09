FROM nginx:alpine

# Remove a configuração padrão do nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copia nossa configuração
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia todos os arquivos do site para o nginx
COPY . /usr/share/nginx/html

# Porta padrão
EXPOSE 8181
