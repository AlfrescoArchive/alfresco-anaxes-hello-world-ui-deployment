FROM nginx:1.13.6-alpine

COPY entrypoint.sh /
ADD anaxes-hello-world-ui-*.tar /usr/share/nginx/html

RUN chmod +x /entrypoint.sh && chown -R root:root /usr/share/nginx/html/*

ENTRYPOINT ["/entrypoint.sh"]