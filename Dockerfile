FROM python:alpine
WORKDIR /html
ADD index.html /html
ADD ./assets /html/assets
ADD final.css /html
ADD dots.js /html
ADD jquery-3.4.1.min.js /html
ENTRYPOINT python -m http.server 80 --bind andreas.training.trambo.cloud


