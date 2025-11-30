FROM nginx:alpine
LABEL authors="maxmichaelbommer"

# Standard HTML löschen
RUN rm -rf /usr/share/nginx/html/*

# Deine Inhalte kopieren
COPY lea /usr/share/nginx/html
RUN chown -R nginx:nginx /usr/share/nginx/html && chmod -R 644 /usr/share/nginx/html/*

# Let's Encrypt Zertifikate mounten (wird zur Laufzeit gemacht)
VOLUME ["/etc/letsencrypt"]

# Nginx Config für HTTPS kopieren
COPY nginx.conf /etc/nginx/nginx.conf
