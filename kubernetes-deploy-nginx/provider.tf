# Set the required providers
terraform {
  required_providers {
    kubernetes = { # Specify the Kubernetes provider
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }
}

# Define the Kubernetes provider
provider "kubernetes" {
  config_path = var.kubeconfig_path # Specify the path to the kubeconfig file
}