variable "jenkins_container_name" {
  description = "The container name of Jenkins."
  type        = string
  default     = "terraform-jenkins"
}

variable "jenkins_home_directory" {
  description = "The path to the Jenkins home directory."
  type        = string
  default     = ""
}

variable "jenkins_image_name" {
  description = "The name of the Docker image for Jenkins."
  type        = string
  default     = "jenkins/jenkins"
}

variable "jenkins_image_tag" {
  description = "The tag for the Docker image for Jenkins."
  type        = string
  default     = ""
}

variable "jenkins_external_port" {
  description = "The external port to use for Jenkins."
  type        = number
  default     = 8080
}