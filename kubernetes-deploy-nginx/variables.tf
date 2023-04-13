# The path to the kubeconfig file that Terraform uses to authenticate and connect to a Kubernetes cluster.
variable "kubeconfig_path" {
  type        = string
  default     = "~/.kube/config"
}

# The name of the Kubernetes namespace to create.
variable "namespace" {
  type        = string
  default     = "terraoform"
}

# The name of the Kubernetes deployment to create.
variable "deployment_name" {
  type        = string
  default     = "terraoform-deployment-nginx"
}

# The number of replicas to create for the Kubernetes deployment.
variable "replicas" {
  type        = number
  default     = 2
}

# The name of the container to create in the Kubernetes deployment.
variable "container_name" {
  type        = string
  default     = "nginx-container"
}

# The name of the Docker image to use for the container.
variable "image_name" {
  type        = string
  default     = "nginx"
}

# The port to expose on the container.
variable "container_port" {
  type        = number
  default     = 80
}

# The type of the service
variable "service_type" {
  type        = string
  default     = "NodePort"
}

# The NodePort to use for the service
variable "node_port" {
  type        = number
  default     = 30080
}