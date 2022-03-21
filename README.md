# Udacity Project 1 Azure DevOps
This is a project related to Udacity Azure DevOps nanodegree. It aims at deploying a policy, an image from a Packer template that will be used by Terraform.
We want to use the skills with variables and loops, along with our knowledge of Azure infrastructure, to deploy a web app that has been loaded into our Packer template already. We'll also need to deploy and verify a policy.

### Dependencies
1. Create an [Azure Account](https://portal.azure.com) 
2. Install the [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install [Packer](https://www.packer.io/downloads)
4. Install [Terraform](https://www.terraform.io/downloads.html)

### Instructions  
## Deploy Policy
You could assign the tagging policy directly in azure portal (like me) or by json file (see policy folder)

## Deploy Packer image
Create a resource group for images
Create an Active Directory Service Principal with the role "contributer":
```
az ad sp create-for-rbac --name "XXXX" --role contributor 
```
You can find your subscriptions_id by:
``` 
az account show
``` 
Update your credentials in the json packer file and then run:
```
packer build XX.json
```
It takes some minutes to create an image in packer image resource group in Azure

## Deploy Terraform
Update the main.tf as mentioned in the assignement. 
The name of packer image must be the same in main.tf and packer json-file.
Create Terraform plan by:
```
terraform plan -out solution.plan
```
you may need to initialize terraform first by:
```
terraform init
```
After generation of solution.plan you can deploy your plan by:
```
terraform apply "solution.plan" 
```
### How to customize
You can configure the settings of your infrastructure by editing var.tf variables:

prefix: Gives all resources a prefix for better organization of resources
location: Location of resources
resource_group: Name of the resource group made by Terraform
packer_rg: Resource group for packer images
username: User name for login of virtual maschines
password: Password for login to virtual maschines and must meet minimum password requirements
number_vm: The number of virtual maschines to be created

### Output
The Output of this deployment is a virtual network with two virtual machines, network security group and all corresponding parts.
 
### Acknowledgment
I acknowledge [rfoltz](https://github.com/rfoltz/Udacity-DevOps-Project-1) which helped me very much especially on the Terraform part.

