FROM ubuntu:latest

COPY package*.json ./

RUN apt-get update \
    && apt-get install -y nginx nodejs npm \
    && apt-get install -y cowsay \
    && ln -s /usr/games/cowsay /usr/bin/cowsay \
	&& npm install

COPY nginx.conf /etc/nginx/

COPY src src
COPY public public

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN npm run build
EXPOSE 80

# CMD ["bash"]
# CMD ["nginx", "-g", "daemon off;"]
CMD cowsay "Everything is alright, everything is ok!" && service nginx start 