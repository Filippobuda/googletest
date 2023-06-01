FROM ubuntu:latest
EXPOSE 8080
#add copia dalla nostra directory alla directory image gli sto dicendo i mettere
ADD * googletest/
ENTRYPOINT ["/bin/bash"]
CMD ["cd src/build", "./exec","./exec2","./exec2"]