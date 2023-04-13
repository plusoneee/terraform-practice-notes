# Define a Kubernetes namespace
resource "kubernetes_namespace" "tf" {
  metadata {
    name = var.namespace
  }
}

# Define a Kubernetes deployment
resource "kubernetes_deployment" "tf" {
  metadata {
    name      = var.deployment_name
    namespace = kubernetes_namespace.tf.metadata[0].name # Specify the namespace
  }

  spec {
    replicas = var.replicas # Set the number of replicas
    selector {   # Select the Pod to manage
      match_labels = {
        app = "myApp"
      }
    }

    template { # Define the Pod template
      metadata {
        labels = { # Define labels for the Pod
          app = "myApp"
        }
      }
      spec {
        container { # Define the container
          image = var.image_name
          name  = var.container_name
          port { # Expose a port
            container_port = var.container_port
          }
        }
      }
    }
  }
}

# Define a Kubernetes service
resource "kubernetes_service" "tf" {
  metadata {
    name      = "nginx-svc"
    namespace = kubernetes_namespace.tf.metadata[0].name # Specify the namespace
  }

  spec {
    selector = { # Select the Pod to listen to
      app = kubernetes_deployment.tf.spec[0].template[0].metadata[0].labels.app
    }

    type = var.service_type # Set the type of service
    port {            # Define the service port
      node_port   = var.node_port
      port        = var.container_port
      target_port = var.container_port
    }
  }
}