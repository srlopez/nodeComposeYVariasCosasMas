FROM ubuntu
RUN apt-get update && apt-get install -y \
    python3 
COPY hello.py ./
RUN python3 /hello.py
CMD [ "echo", "Hello World!" ]
