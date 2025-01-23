#use the official python image as base image
FROM nginx AS builder

#set a working directory inside the container
WORKDIR /app

#update system
RUN apt update

#install deps
RUN apt install mkdocs -y && \
    apt install mkdocs-bootstrap -y
    
#copy the project files into the container
COPY . .

#build the project
RUN mkdocs build

FROM nginx:alpine

#copy project build code to nginx server
COPY --from=builder /app/site /usr/share/nginx/html
