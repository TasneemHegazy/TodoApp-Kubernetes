FROM gitpod/workspace-full

USER root

RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh

USER gitpod

# Example for installing the Kubernetes extension by Microsoft
RUN code-server --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
