FROM nginx:latest

# Copy application files
COPY app/index.html /usr/share/nginx/html/index.html

# Copy nginx configuration
COPY app/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80