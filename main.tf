terraform {  
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "~> 0.4.2"
    }
  }
  
}

provider "minikube" {
   kubernetes_version = "v1.30.0" # Configuration options for the Minikube provider can be set here
}

resource "minikube_cluster" "minikube_docker" {
    driver = "docker" # Specify the driver for Minikube
    cluster_name = "complete-devops-project" # Name of the Minikube cluster
    addons = ["default_storageclass", "storage-provisioner"] # Addons to enable in the Minikube cluster
}
