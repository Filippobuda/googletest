FROM ubuntu:latest
EXPOSE 3030
#workdir mi mette in /bin/bash come cartella di lavoro
WORKDIR /app
#qui copio tutto googletest dentro il container
COPY 