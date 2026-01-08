 Synapse – Azure DevOps & AKS Project
 Overview

Synapse is an end-to-end Azure DevOps & Cloud-Native project demonstrating Infrastructure as Code (IaC), containerization, CI/CD readiness, and Kubernetes deployment on Microsoft Azure.

The project provisions Azure infrastructure using Terraform, containerizes a microservice using Docker, stores images securely in Azure Container Registry (ACR), deploys workloads to Azure Kubernetes Service (AKS), and exposes services publicly using an Azure LoadBalancer.

 Architecture
Code → Docker → Azure Container Registry → AKS → LoadBalancer → Public API

 Tech Stack

Cloud: Microsoft Azure

IaC: Terraform

Containers: Docker

Container Registry: Azure Container Registry (ACR)

Orchestration: Azure Kubernetes Service (AKS)

CI/CD: Azure DevOps (pipeline-ready)

OS: Linux (WSL2 on Windows)

Project Structure
Synapse/
│
├── infra/                  # Terraform IaC
│   ├── modules/
│   │   ├── aks/
│   │   └── network/
│   └── envs/dev/
│
├── services/
│   └── user-service/       # Node.js microservice
│
├── k8s/
│   └── user-service/       # Kubernetes manifests
│
└── pipelines/              # Azure DevOps YAML pipelines

Key Features

Infrastructure provisioning using Terraform modules

Secure container image management with ACR

AKS–ACR integration using Managed Identity

Kubernetes Deployment & Service manifests

Public service exposure using LoadBalancer

Cost-optimized temporary AKS provisioning

 Cost Optimization

AKS was provisioned temporarily for validation and decommissioned after testing to prevent unnecessary cloud costs.
