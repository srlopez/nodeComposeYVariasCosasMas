FROM ubuntu
RUN apt-get update && apt-get install -y \
    python3 
COPY somefile.txt ./
RUN cat /somefile.txt
CMD [ "echo", "Hello World!" ]
