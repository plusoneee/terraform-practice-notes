terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.1"
    }
  }
}

# Use Docker provider and connect to the local Docker socket
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Define a Docker image resource for Jenkins
resource "docker_image" "jenkins" {
  name = "${var.jenkins_image_name}:${var.jenkins_image_tag}"
}

# Create a null resource to execute a local command to create the Jenkins volume path
resource "null_resource" "create_jenkins_home_directory" {
  provisioner "local-exec" {
    command = "mkdir -p ${var.jenkins_home_directory}"
  }
}

# Define a Docker image resource for Jenkins
resource "docker_container" "jenkins" {
  image   = docker_image.jenkins.name
  name    = var.jenkins_container_name
  user    = "root"
  restart = "always"

  # Define the ports exposed by the container
  ports {
    internal = 8080
    external = "${var.jenkins_external_port}"
  }
  ports {
    internal = 50000
    external = 50000
  }

  # Define the volumes mounted by the container
  volumes {
    host_path      = "/home/ubuntu/joy-terraform-workspace/jenkins_home"
    container_path = "/var/jenkins_home"
  }

  volumes {
    host_path      = "/usr/share/zoneinfo/Asia/Taipei"
    container_path = "/etc/localtime"
    read_only      = true
  }

  # Define the command to execute when the container starts
  command = [
    "java",
    "-Duser.timezone='Asia/Taipei'",
  "-jar", "/usr/share/jenkins/jenkins.war"]
}

# Create a null resource to execute a local command to check if Jenkins is ready
resource "null_resource" "jenkins_validation" {
  provisioner "local-exec" {
    command = "docker exec ${docker_container.jenkins.name}  curl -Is http://localhost:8080/ | head -1"
  }
}