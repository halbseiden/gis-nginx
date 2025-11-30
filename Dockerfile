FROM nginx
LABEL authors="maxmichaelbommer"
RUN rm -rf /usr/share/nginx/html/*
COPY lea /usr/share/nginx/html
RUN chown -R nginx:nginx /usr/share/nginx/html && chmod -R 644 /usr/share/nginx/html/*
