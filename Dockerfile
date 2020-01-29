FROM nginx:alpine

COPY ./htdocs /htdocs
COPY nginx.conf /etc/nginx/conf.d/default.conf
