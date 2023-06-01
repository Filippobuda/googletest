FROM ubuntu:latest
EXPOSE 8080
#add copia dalla nostra directory alla directory image gli sto dicendo i mettere
ADD * googletest/
CMD ["cd", "src/build"]
CMD ["./exec"]