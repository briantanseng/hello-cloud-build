FROM nginxinc/nginx-unprivileged:1.17.3-alpine

# Copy nginx configuration
COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/default.conf /etc/nginx/conf.d/default.conf

# Copy the application
COPY . /usr/share/nginx/html

RUN mkdir -p /var/cache/nginx && chown nginx:nginx /var/cache/nginx

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
