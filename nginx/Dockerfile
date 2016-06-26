# https://github.com/docker-library/docs/tree/master/nginx

FROM nginx

# install NewRelic agent and configure
RUN set -x \
  && apt-get update -y \
  && apt-get install -y --no-install-recommends nodejs npm \
  && rm -rf /var/lib/apt/lists/*

# fix npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

# install bower
RUN npm install bower -g

# clean up
#RUN rm /etc/nginx/conf.d/default.conf

#COPY ./conf/default.conf /etc/nginx/conf.d/
#COPY ./conf/nginx.conf /etc/nginx/
#RUN chown -R nginx /etc/nginx


#COPY ./html /usr/share/nginx/html

# EXPOSE 80
# CMD ["nginx"]
# CMD ["nginx-debug", "-g", "daemon off;"]

# docker build -t nginxproxy .
# docker run -p 80:80 --name=nginx-proxy -d nginxproxy