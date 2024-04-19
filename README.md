# Terraform code for Azure VM
Terraform code to deploy simple Linux VM on Azure with a static public IP attached.

## Prerequisites

Before you can deploy the VM using this Terraform code, make sure you have the following prerequisites:

- Azure subscription
- Azure CLI installed
- Terraform installed

## Getting Started

To get started, follow these steps:

1. Create an Azure service principal for Terraform authentication to Azure:

    ```bash
    az ad sp create-for-rbac --name <service_principal_name> --role Contributor --scopes /subscriptions/<subscription_id>
    ```

2. Specify the service credentials to Terraform via environment variables:

    ```bash
    export ARM_SUBSCRIPTION_ID="<azure_subscription_id>"
    export ARM_TENANT_ID="<azure_subscription_tenant_id>"
    export ARM_CLIENT_ID="<service_principal_appid>"
    export ARM_CLIENT_SECRET="<service_principal_password>"
    ```

3. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/officialdarnyc/terraform-vm.git
    ```

4. Change into the cloned directory:

    ```bash
    cd terraform-vm
    ```

5. Initialize Terraform:

    ```bash
    terraform init
    ```

6. Modify the `variables.tf` file to customize the VM. However, you may use a `.tfvars` file to set your own values for the defined variables. If you'll be deploying the VM to an existing resource group, specify the `create_rg` input variable in your `.tfvars` file setting it to `false` and also specify the name of your existing resource group using the `rg_name` variable.


7. Review the `main.tf` file to ensure it matches your requirements.

8. Plan the deployment to see the changes that will be made:

    ```bash
    terraform plan -out=vm.tfplan

    # Use if you created a tfvars file, replace with your file name
    terraform plan -var-file="example.tfvars" -out=vm.tfplan
    ```

9. Provision the VM without prompting for confirmation:

    ```bash
    terraform apply -auto-approve vm.tfplan

    # Use if you created a tfvars file, replace with your file name
    terraform apply -var-file="example.tfvars" -auto-approve vm.tfplan
    ```

## Clean Up

To delete the VM and all the associated resources, run the following command:
  
    terraform destroy -auto-approve
