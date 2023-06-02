FROM ubuntu:latest
EXPOSE 7080
#add copia dalla nostra directory alla directory image gli sto dicendo i mettere
WORKDIR /app
COPY . /app
CMD ["ls"]