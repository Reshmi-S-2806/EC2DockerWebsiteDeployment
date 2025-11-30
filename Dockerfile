FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
# Expose port 80 (documentation only; docker run -p does the mapping)
EXPOSE 80
