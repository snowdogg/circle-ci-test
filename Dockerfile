FROM python:alpine
WORKDIR /html
COPY index.html /html
COPY ./assets /html/assets
COPY final.css /html
COPY dots.js /html
COPY jquery-3.4.1.min.js /html
ENTRYPOINT python -m http.server 80
