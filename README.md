# Welcome

This project contains the artifacts to deploy the [Hello World UI](https://github.com/Alfresco/alfresco-anaxes-hello-world-ui) via Docker and Kubernetes.

The UI talks to the back-end service REST API to retrieve the welcome message to return.

# Build Docker Image

To build the Docker image run the script which gets the service jar:

    ./build-prep.sh

then:

    docker build -t anaxes-hello-world-ui .

# Run Docker Image

You first need to run the Hello World service host.  Assuming:

    HELLO_BACKEND_URL=http://localhost:8080

You can then run the UI Docker image on port 8888:

    docker run -p8888:80 -e HELLO_BACKEND_URL=$HELLO_BACKEND_URL --name hello-world-ui anaxes-hello-world-ui:latest

You should then be able to access the UI at:

    http://localhost:8888

# Helm

See [helm/hello-world-ui](helm/hello-world-ui)