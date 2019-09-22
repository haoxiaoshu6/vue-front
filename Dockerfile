FROM nginx
LABEL name='vue-front'
LABEL version='1.0'
COPY ./dist /user/share/nginx/html
COPY ./vue-front.conf /ect/nginx/conf.d
EXPOSE 80