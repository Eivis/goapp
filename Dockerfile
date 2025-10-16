# Use the official NGINX image from the Docker Hub
FROM nginx:stable-alpine3.21

# Copy the static HTML file into the container
COPY index.html /usr/share/nginx/html/index.html
