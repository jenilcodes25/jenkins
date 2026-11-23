
# Use lightweight Nginx image
FROM nginx:alpine

# Add a custom HTML page
RUN echo '<html><body><h1>Hello from Docker and Jenkins!</h1></body></html>' > /usr/share/nginx/html/index.html

# Expose application port
EXPOSE 81

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
