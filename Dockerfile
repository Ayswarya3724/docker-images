# Dockerfile
FROM nginx:alpine
# Remove default index if present (optional)
RUN rm -f /usr/share/nginx/html/*
# Copy index.html from repo root
COPY index.html /usr/share/nginx/html/index.html
# Expose port (optional - helpful for local docker run)
EXPOSE 80
# Default nginx entrypoint already configured in base image
