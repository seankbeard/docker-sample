FROM ubuntu:16.04
RUN apt-get update && apt-get install -y nginx && apt-get clean && rm -rf /var/lib/apt/lists/*
ADD webdemo /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
