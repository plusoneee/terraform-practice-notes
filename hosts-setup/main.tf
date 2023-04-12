resource "null_resource" "add_entry" {
  # Define triggers that store the domain and IP variables
  triggers = {
    domain = var.domain
    ip     = var.ip
  }

  # Execute a local command to add the IP and domain to the /etc/hosts file.
  provisioner "local-exec" {
    command = "echo '${var.ip} ${var.domain}' | sudo tee -a /etc/hosts"
  }

  # Execute a local command to remove the specific IP and domain from the /etc/hosts file upon resource destruction.
  provisioner "local-exec" {
    when    = destroy
    command = "sudo sed -i.bak '/${self.triggers.ip} ${self.triggers.domain}/d' /etc/hosts"
  }
}