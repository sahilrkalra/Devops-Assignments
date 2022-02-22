# Azure Cloud Infrastructure provisioning using Terraform
The modules folder consists of the following modules -

#### vnet -
This module creates a Virtual Network in Azure

#### subnet -
This module creates a Subnet

#### nsg -
This module creates a Network Security Group, NSG Rules and associates the NSG to Subnet

#### vm -
This module creates a Azure Public IP, Azure Network Interface Card, Azure Linux Virtual Machine

# sample-project
The sample-project actually imports all the above mentioned modules to create a full fledged infrastructure in Microsoft Azure cloud. After successful execution it prints the public IP attached to the VM that can be used to ssh into it.

#### Commands to execute the code -
The following commands can be executed to run the code inside sample-project/dev
export TF_VAR_vm_password="Password_that_you_want_to_set_for_the_VM"
terraform init
terraform plan -var-file="dev.tfvars"
terraform apply -var-file="dev.tfvars"

#### Note -
The current version of the code is using local backend and it can be enhanced to follow the best practise of storing the state file on some remote storage for ex. Azure Storage Account.