# GHA-devops-pipeline
# 🛠️ Fully Automated DevOps Pipeline: Flask App on Kubernetes

This project demonstrates a **fully automated DevOps pipeline** for a simple Python Flask application. The goal is to showcase **real-world DevOps practices** with a strong emphasis on **automation**, **GitOps**, and **Kubernetes best practices** using modern tools such as GitHub Actions, Docker, Terraform, Helm, and Argo CD.

---

## 🚀 Project Overview

This repository contains a lightweight Flask API that returns the current server time. Beyond the simplicity of the app, the focus is on demonstrating a **production-style deployment pipeline**, from code commit to deployment on a local Kubernetes cluster via **Minikube**.

---

## 🧱 Tech Stack

| Category         | Tool                             |
|------------------|----------------------------------|
| Language         | Python (Flask)                   |
| Containerization | Docker                           |
| Infrastructure   | Terraform                        |
| Orchestration    | Kubernetes (Minikube)            |
| CI/CD            | GitHub Actions                   |
| GitOps           | Argo CD                          |
| Package Manager  | Helm                             |

---

## 🔄 DevOps Workflow

1. **Application Code**: A Python Flask app that returns current server time.
2. **Dockerization**: Containerize the app with a production-ready Dockerfile.
3. **Infrastructure Provisioning**:
   - Provision a local Kubernetes cluster using **Minikube**
   - Set up required resources using **Terraform**
4. **Helm Packaging**: Deploy the app using a custom Helm chart.
5. **GitHub Actions CI/CD**:
   - Lint and test code
   - Build and push Docker image
   - Update Helm chart values
   - Sync deployment using Argo CD
6. **GitOps with Argo CD**:
   - Automatically detect and sync deployment changes from GitHub to Kubernetes.

---

## 📂 Project Structure

```bash
.
├── app/                      # Flask application code
│   └── app.py
├── Dockerfile                # Container definition
├── terraform/                # Minikube provisioning using Terraform
├── helm-chart/               # Helm chart for Flask app
├── .github/workflows/        # GitHub Actions CI/CD workflows
├── argo-app.yaml             # Argo CD Application manifest
└── README.md


⚙️ Getting Started
Prerequisites: Docker, Terraform, Minikube, Helm, Argo CD CLI, Python 3.x

1. Clone the Repository
git clone https://github.com/newthiesco/GHA-devops-pipeline.git
cd GHA-devops-pipeline.git

2. Provision Kubernetes with Terraform
cd terraform/
terraform init
terraform apply

3. Deploy Argo CD to Minikube
Follow Argo CD installation instructions: https://argo-cd.readthedocs.io/en/stable/getting_started/

Apply the Argo CD app:

Follow Argo CD installation instructions: https://argo-cd.readthedocs.io/en/stable/getting_started/

Apply the Argo CD app:
kubectl apply -f argo-app.yaml

4. Commit Code to Trigger GitHub Actions
Once you push changes, the GitHub Actions pipeline will:

Build and push Docker image

Update Helm chart

Trigger Argo CD sync to deploy the app


✅ Key Highlights
🔁 GitOps: Application state managed through Git.

🧪 Automation: Full CI/CD pipeline using GitHub Actions.

🧱 IaC: Minikube provisioned using Terraform.

🐳 Dockerized: Production-grade Docker setup.

📦 Helm: Reusable Helm charts for versioned deployments.

🚀 Argo CD: Continuous deployment with real-time sync.


🧪 Future Enhancements
Integrate unit/integration tests

Add secrets management (e.g., Sealed Secrets or External Secrets)

Add monitoring (Prometheus/Grafana)

🙌 Acknowledgements
Inspired by modern DevOps practices and the power of open-source tools.


**Reference:** [YouTube Video](https://youtu.be/HBRQJtqKh3U)


