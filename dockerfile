FROM ubuntu:16.04
RUN apt-get update && apt-get install -y nginx && apt-get clean && rm -rf /var/lib/apt/lists/*
COPY webdemo /var/www/html/webdemo
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
