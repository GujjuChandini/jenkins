FROM nginx:alpine

# Remove the default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy only the index.html file to Nginx html directory
COPY index.html /usr/share/nginx/html/index.html

# No need to add CMD here; it's already handled by the base image
