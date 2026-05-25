FROM mcr.microsoft.com/cbl-mariner/base/core:2.0

RUN tdnf install -y nginx && \
    tdnf clean all

COPY app/index.html /usr/share/nginx/html/index.html
COPY app/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]