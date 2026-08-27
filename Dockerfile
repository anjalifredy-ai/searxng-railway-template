FROM docker.io/searxng/searxng:latest

# Pre-seed settings before the image's own entrypoint runs
COPY settings.yml /etc/searxng/settings.yml

# Replace default logo with custom RikkY Search logo
COPY rikky-logo-transparent.png /usr/local/searxng/searx/static/themes/simple/img/searxng.png

EXPOSE 8080
