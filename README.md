# TodoApp-Kubernetes

## Introduction

TodoApp-Kubernetes is a containerized Node.js and MongoDB API project that can be deployed on a Kubernetes cluster. This project provides a scalable and efficient solution for managing and organizing todo items. By leveraging the power of Docker and Kubernetes, you can easily package, deploy, and scale the application to meet your needs.

## Prerequisites

Before getting started, make sure you have the following prerequisites in place:

- Node.js: Ensure that you have Node.js installed on your machine.
- Docker: Install Docker to containerize and manage your application.
- Kubernetes: Familiarize yourself with the basic components of Kubernetes. You can refer to the official documentation.
- Minikube: Install Minikube, a tool that helps you create a local Kubernetes environment.
- Kubectl: Install Kubectl, a command-line tool for communicating with a Kubernetes cluster using the Kubernetes API.

## Getting Started

Follow the steps below to deploy the TodoApp-Kubernetes project on your Kubernetes cluster:

1. Clone the repository:

   ```bash
   git clone https://github.com/AmaniEzz/TodoApp-Kubernetes.git
   ```

2. Navigate to the cloned directory:

   ```bash
   cd TodoApp-Kubernetes
   ```

3. Containerize the Node.js application using Docker:

   ```bash
   docker build -t todo-api .
   ```

4. Push the Docker image to Minikube's local registry:

   ```bash
   eval $(minikube -p minikube docker-env)
   docker build -t todo-api .
   docker push todo-api
   ```

   Note: The above steps configure your local Docker client to communicate with the Docker daemon inside the Minikube VM.

5. Deploy the application on the Kubernetes cluster:

   ```bash
   kubectl apply -f deployment.yaml
   ```

6. Verify that the deployments and services are created successfully:

   ```bash
   kubectl get deployments
   kubectl get pods
   kubectl get services
   ```

7. Access the TodoApp API:

   To access the TodoApp API within the cluster, run the following command to find the routable IP:

   ```bash
   kubectl get services todo-api
   ```

   Alternatively, you can use the following command:

   ```bash
   kubectl service todo-api
   ```

   The output will provide the `EXTERNAL-IP` and port for accessing the application.

## Testing the API

To test the API, make requests to the exposed service endpoint. For local deployment purposes, keep running the `minikube tunnel` command in another shell.

To find the routable IP, run:

```bash
kubectl get services todo-api
```

Examine the `EXTERNAL-IP` column in the output. You can also use the following command:

```bash
kubectl service todo-api
```

This will open the application in the browser, allowing you to test the API.

## Conclusion

Congratulations! You have successfully deployed the TodoApp-Kubernetes project on your Kubernetes cluster. Enjoy managing your todo items in a scalable and efficient manner. Feel free to explore and customize the application to suit your requirements.
