FROM nginx:alpine

# Remove the default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy the application code (index.html) to the appropriate directory
COPY . /usr/share/nginx/html

# Keep the Nginx server running in the foreground
CMD ["nginx", "-g", "daemon off;"]
