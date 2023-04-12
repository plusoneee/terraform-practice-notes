# Set variables for the NAS IP address and hostname to be added to /etc/hosts
variable "ip" {
  description = "The IP address to add to /etc/hosts"
  type        = string
  default     = ""
}

variable "domain" {
  description = "The Hostname to add to /etc/hosts"
  type        = string
  default     = ""
}