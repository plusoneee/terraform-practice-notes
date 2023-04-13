# Terraform Kubernetes Nginx Example

This example demonstrates how to use Terraform to provision a Kubernetes deployment with Nginx.

## File Structure
The project has the following file structure:
```
.
├── README.md
├── main.tf
├── provider.tf
├── variables.tf
└── terraform.tfvars.example
```

* `main.tf`: Defines the Kubernetes resources to create, including a namespace, deployment, and service.
* `provider.tf`: Specifies the Kubernetes provider and authentication details.
* `variables.tf`: Defines the input variables for the Terraform configuration.
* `terraform.tfvars.example`: Example file containing values for the input variables.

## Usage
1. Create a `terraform.tfvars` file based on the `terraform.tfvars.example` file provided.
2. Run `terraform init` to initialize the provider and download any necessary plugins.
3. Run `terraform plan` to preview the changes that will be made.
4. If the plan looks good, run `terraform apply` to create the Kubernetes deployment and service.
5. To clean up the resources, run `terraform destroy`.

Note: Make sure that you have the proper permissions and credentials set up to access the Kubernetes cluster before running Terraform commands.

### Customizing Variables
The `terraform.tfvars.example` file contains default values for the input variables. To customize these values, create a `terraform.tfvars` file and specify new values for the desired variables. For example:
```
kubeconfig_path = "/path/to/my/.kube/config"
namespace       = "my-namespace"
replicas        = 3
```

## Reference

* [Terraform Kubernetes Provider Getting Started Guide](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/guides/getting-started)