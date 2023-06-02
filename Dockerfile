FROM ubuntu:latest
EXPOSE 3030
#workdir mi mette in /bin/bash come cartella di lavoro
WORKDIR /bin/bash/
#qui copio tutto googletest dentro il container
COPY . .
#RUN mi serve a installare cmake (?)
RUN ["/bin/bash", "sudo apt install cmake ..."]
CMD ["cd","src"]
CMD [ "cmake .."]