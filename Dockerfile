FROM nginx:alpine

# Copy the static files to /var/www/html (instead of default /usr/share/nginx/html)
COPY public/ /var/www/html/

# Copy nginx template
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

# Expose port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
