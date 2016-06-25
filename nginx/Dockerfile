# https://github.com/docker-library/docs/tree/master/nginx

FROM nginx

# clean up
RUN rm /etc/nginx/conf.d/default.conf

COPY ./conf/default.conf /etc/nginx/conf.d/
COPY ./conf/nginx.conf /etc/nginx/
RUN chown -R nginx /etc/nginx


COPY ./html /usr/share/nginx/html

# EXPOSE 80
# CMD ["nginx"]
CMD ["nginx-debug", "-g", "daemon off;"]

# docker build -t nginxproxy .
# docker run -p 80:80 --name=nginx-proxy -d nginxproxy