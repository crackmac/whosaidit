FROM nginx

RUN set -x \
  && apt-get update -y \
  && apt-get install -y --no-install-recommends nodejs npm \
  && rm -rf /var/lib/apt/lists/*

# fix npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

#COPY ./html /usr/share/nginx/html

# EXPOSE 80
# CMD ["nginx"]
# CMD ["nginx-debug", "-g", "daemon off;"]

# docker build -t nginxproxy .
# docker run -p 80:80 --name=nginx-proxy -d nginxproxy