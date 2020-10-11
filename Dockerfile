FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY ./assets /usr/share/nginx/html/assets
COPY final.css /usr/share/nginx/html/final.css
COPY dots.js /usr/share/nginx/html/dots.js
COPY jquery-3.4.1.min.js /usr/share/nginx/html/jquery-3.4.1.min.js

