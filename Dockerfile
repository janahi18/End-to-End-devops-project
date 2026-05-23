FROM mcr.microsoft.com/oss/nginx/nginx:1.25.5

# Copy application files
COPY app/index.html /usr/share/nginx/html/index.html

# Copy nginx configuration
COPY app/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80