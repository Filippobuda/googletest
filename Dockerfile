FROM ubuntu:latest
EXPOSE 8080
#add copia dalla nostra directory alla directory image gli sto dicendo i mettere
WORKDIR /app
COPY . /app
CMD ["ls"]