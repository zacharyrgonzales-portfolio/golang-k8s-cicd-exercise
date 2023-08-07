# My Go App

This repository contains the source code for "My Go App", a Go application designed to be deployed on Kubernetes using Helm and Docker.

## Directory Structure

```
/my-go-app
│
├── cmd
│   └── app
│       └── main.go            # Entry point of your Go application
│
├── pkg                        # Libraries and code that can be used by other services or applications
│   ├── database
│   ├── utils
│   └── ...
│
├── api                        # API definitions and protocol files (e.g., Protobufs or GraphQL schemas)
│
├── internal                   # Private application and library code
│
├── deploy                     # Deployment-related files
│   ├── k8s                    # Raw Kubernetes manifests
│   │   ├── deployment.yaml
│   │   ├── service.yaml
│   │   └── ...
│   │
│   ├── helm                   # Helm chart directory
│   │   ├── go-server-chart
│   │   │   ├── templates
│   │   │   ├── values.yaml
│   │   │   └── Chart.yaml
│   │   └── ...
│   │
│   └── docker-compose.yaml    # Docker Compose file to run your app locally
│
├── Dockerfile                 # Dockerfile to containerize your Go application
│
├── .gitignore
├── go.mod                     # Go modules file
├── go.sum                     # Go checksum file
└── README.md
```

### Explanation:

- **cmd**: This is where the entry point of your application resides. If you have multiple binaries, you can have multiple subdirectories under `cmd`.

- **pkg**: Libraries and code that might be used by other applications or services. This is a common structure in Go projects.

- **api**: If your application serves an API, you can place your API definitions and related files here.

- **internal**: Code that is private to this application. Other applications or services cannot import code from here.

- **deploy**: This directory contains all deployment-related files.
  
  - **k8s**: Raw Kubernetes manifests.
  
  - **helm**: Helm charts for deploying your application to Kubernetes.
  
  - **docker-compose.yaml**: For local development, you might want to use Docker Compose to spin up your application and its dependencies.

- **Dockerfile**: This is the Dockerfile for building a Docker image of your Go application.

- **go.mod** and **go.sum**: These are used by Go modules to manage dependencies.

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/zacharyrgonzales-portfolio/golang-k8s-cicd-exercise.git
   ```

2. Navigate to the project directory:
   ```bash
   cd my-go-app
   ```

3. Build and run using Docker Compose:
   ```bash
   docker-compose up --build
   ```

## Deployment

To deploy the application to a Kubernetes cluster, use the provided Helm chart:

```bash
helm install my-go-app-release ./deploy/helm/go-server-chart
```

---
