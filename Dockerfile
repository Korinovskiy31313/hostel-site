FROM nginx:1.27-alpine

# Copy the static Hotel Horizon website into the Nginx document root.
COPY index.html rooms.html styles.css /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Render's default HTTP port for web services.
EXPOSE 10000

CMD ["nginx", "-g", "daemon off;"]
