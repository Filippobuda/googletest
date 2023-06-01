FROM ubuntu:latest
EXPOSE 8080
ADD src/build build/
ENTRYPOINT ["./exec","./exec2","./exec3"]