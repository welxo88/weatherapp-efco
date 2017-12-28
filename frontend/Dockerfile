FROM nginx
COPY ./build /usr/share/nginx/html

ENV PORT=80

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]