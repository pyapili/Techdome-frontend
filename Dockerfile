# Use an official Nginx image to serve the static files
FROM nginx:alpine

# Copy the build output from the local folder to the Nginx default folder
COPY ./build /usr/share/nginx/html

# Expose the default HTTP port
EXPOSE 80

# The default command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
