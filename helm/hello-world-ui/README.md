# Anaxes Hello World UI

This Helm chart provides an example deployment of the Anaxes Hello World UI. 

The UI calls a simple REST API to retrieve a welcome message to display to the user.

The chart is intended to serve as an example of how a team should build, package and deploy to Kubernetes clusters using Anaxes artifacts and best practices.

A Deployment is used to create a Deployment for the UI. 

A services is used to create a gateway to the UI pods running in the deployment.

An Ingress is used to rewrite the paths of the service and offer externally through one common service.

This chart depends on the following chart to provide ingress path rewrites:
- Nginx Ingress - [https://github.com/kubernetes/charts/tree/master/stable/nginx-ingress](https://github.com/kubernetes/charts/tree/master/stable/nginx-ingress)

You can deploy this chart to a minikube or AWS cluster with:

    helm install hello-world-ui

Once deployed you can use the `get-ui-url.sh` script to get the publicly accessible URL for the UI.