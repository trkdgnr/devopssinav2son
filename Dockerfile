# Base Alpine image'ını kullanıyoruz
FROM alpine

# htop kurulumu icin ekledigimiz command
RUN apk add --no-cache htop

# curl kurulumu icin ekledigimiz command
RUN apk add --no-cache curl
