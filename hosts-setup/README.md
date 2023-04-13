# Manage /etc/hosts Entries with Terraform

This Terraform configuration allows you to manage entries in the `/etc/hosts` file by adding and removing domain names along with their corresponding IP addresses during the deployment and destruction process.

## File Structure
* `main.tf`: Contains the main Terraform configuration, which includes a `null_resource` with provisioners for adding and removing entries in the `/etc/hosts` file.
* `variables.tf`: Contains the variable declarations for the `domain` and `ip` variables.
* `terraform.tfvars`: (Optional) Contains custom values for the domain and ip variables.  Terraform will automatically read these values and use them in the `main.tf` configuration.

## Usage
1. Initialize Terraform: `terraform init`
2. Apply the configuration: `terraform apply`
3. Destroy the resources when needed: `terraform destroy`


### Customizing Variables
To use custom domain and IP values, create a `terraform.tfvars` file in the same directory as `main.tf` and `variables.tf` with the following content:

```hcl
domain = "your-domain.com"
ip     = "your-ip-address"
```

Replace `your-domain.com` and `your-ip-address` with your desired domain name and IP address. 

Terraform will automatically read the values from the `terraform.tfvars` file and use them in the main.tf configuration.

**Note:** If you do not create a `terraform.tfvars` file, Terraform will use the default values specified in the `variables.tf` file.
