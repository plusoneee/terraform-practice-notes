# Jenkins Terraform Configuration

This Terraform configuration creates a Docker container running Jenkins with a specific version and configuration. It includes a `main.tf` file that defines the infrastructure resources, a `variables.tf` file that defines the input variables for the configuration, and a `terraform.tfvars.example` file that provides an example configuration.

## File Structure
The project has the following file structure:

```
.
├── main.tf
├── terraform.tfvars.example
└── variables.tf
```

* `main.tf`: Defines the Jenkins Docker container, including the image, ports, volumes, and command.
* `terraform.tfvars.example`: Provides an example configuration for the Terraform input variables.
* `variables.tf`: Defines the input variables for the Terraform configuration.

## Usage

To use this Terraform configuration, follow these steps:
1. Create a `terraform.tfvars` file to configure the Jenkins instance. You can use the example file `terraform.tfvars.example` as a starting point.
2. Initialize the Terraform working directory with `terraform init`.
3. Create an execution plan with `terraform plan`.
4. Apply the changes with `terraform apply`.
5. Validate that the Jenkins instance is up and running by opening a web browser and navigating to `http://localhost:<jenkins_external_port>`. If Jenkins is running, you should see the Jenkins web interface.

To remove the Jenkins Docker container and clean up any associated resources, run terraform destroy.

### Customizing Variables

The following variables can be set in the `terraform.tfvars` file to customize the configuration:

* `jenkins_container_name`: The name of the Docker container running Jenkins (default: terraform-jenkins).
* `jenkins_home_directory`: The directory path for the Jenkins home directory (default: "", which sets the home directory to the default location within the container).
* `jenkins_image_name`: The name of the Docker image to use for Jenkins (default: `jenkins/jenkins`).
* `jenkins_image_tag`: The tag of the Docker image to use for Jenkins (default: `""`, which uses the latest version of the image).
* `jenkins_external_port`: The external port to use for Jenkins (default: `8080`).

You can modify these variables to suit your specific requirements by setting them in the `terraform.tfvars` file or by passing them as command-line arguments.
