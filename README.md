# Welcome

This project contains the artifacts to deploy the [Hello World UI](https://github.com/Alfresco/alfresco-anaxes-hello-world-ui) via Docker and Kubernetes.

The UI talks to the back-end service REST API to retrieve the welcome message to return.

# Build Docker Image

To build the Docker image run the script which gets the app distribution artifact:

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

## SSO demonstration

To demonstrate the Single Sign On capability of the Hello World App you need to configure the URL to Alfresco Content Services, Alfresco Process Services and Alfresco Identity Service. If you are using the Docker Image you can set those up using the following environmental variables: ACS_URL, APS_URL, IDENTITY_SERVICE_URL.

| Component   | Can be accessed at | Example of Usage |
| ------------|:-----------: | ---------------------- |
| Alfresco Anaxes Hello World Service      | http://localhost:8080/hello/welcome     | -e HELLO_BACKEND_URL=http://localhost:8080 |
| Alfresco Content Services  | https://localhost:8080/share      | -e ACS_URL=https://localhost:8080 |
| Alfresco Process Services     | https://localhost:8080/activiti-app       | -e APS_URL=https://localhost:8080 |
| Alfresco Identity Service        | https://localhost:8080/auth        | -e IDENTITY_SERVICE_URL=https://localhost:8080 |
