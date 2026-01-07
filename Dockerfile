FROM nginx:stable-alpine

# Copy custom static files into nginx default html directory
COPY ./html /usr/share/nginx/html

# Expose HTTP port
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
