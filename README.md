# Terraform Practice Notes

This repository contains Terraform code examples for various infrastructure components.

## Directory Structure
The repository is organized into multiple directories, each containing Terraform code files and a README.md file that provides instructions and information about how to use the Terraform code in that directory:

* `hosts-setup`: Contains all Terraform files related to host setup and configuration.
* `jenkins-container`: Contains all Terraform files related to a Jenkins container.
* `kubernetes-deploy-nginx`: a Terraform configuration that deploys an Nginx container to a Kubernetes cluster

Please read the relevant `README.md` file in each directory before using the Terraform code. This will provide you with more information on how to use the code and what to expect when running it.

## Getting Started
To use the Terraform configurations in this repository, follow these steps:

1. Install Terraform on your local machine. Refer to the official [Terraform official website](https://www.terraform.io/downloads.html) for installation instructions based on your operating system.
2. Open a terminal and run the following command to verify that Terraform is installed correctly: `terraform version`. If everything is working properly, you should see the version information of Terraform. 
3. Clone this repository to your local machine and navigate to the directory for the Terraform configuration you want to use.
4. Create a `terraform.tfvars` file based on the `terraform.tfvars.example` file in the same directory. Customize the variables defined in the `variables.tf` file in the directory by changing their values in the `terraform.tfvars` file.
5. Run `terraform init` to initialize the Terraform configuration.
6. Run `terraform plan` to see what changes Terraform will make.
7. Run `terraform apply` to apply the changes.
8. To clean up the infrastructure, run `terraform destroy`.

## Customizing Variables

* Each Terraform configuration has its own variables that can be customized. These variables are defined in the `variables.tf` file in each directory.
* To customize a variable, create a `terraform.tfvars` file based on the `terraform.tfvars.example` file in the same directory, and change the value of the variable in the `terraform.tfvars` file.

## References
For more information about Terraform, please refer to the [official Terraform documentation](https://www.terraform.io/docs/index.html).
