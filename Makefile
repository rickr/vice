CONTAINER_ID := $(shell docker ps -alq)

all:
        docker build . -t vice
        docker run -d vice
        docker cp $(CONTAINER_ID):/usr/local/src/vice/vice .
