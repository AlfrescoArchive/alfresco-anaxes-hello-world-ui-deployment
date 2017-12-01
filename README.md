# Welcome

This project contains the artifacts to deploy the [Hello World UI](https://github.com/Alfresco/alfresco-anaxes-hello-world-ui) via Docker and Kubernetes.

The UI talks to the back-end service REST API to retrieve the welcome message to return.

# Build Docker Image

To build the Docker image run the script which gets the app distribution artifact:

    ./build-prep.sh

then:

    docker build -t anaxes-hello-world-ui .

# Run Docker Image

To run the Docker image on port 8888:

    docker run -p8888:80 anaxes-hello-world-ui:latest

# Helm

See [helm/hello-world-ui](helm/hello-world-ui)
