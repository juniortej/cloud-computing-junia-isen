# Azure Virtual Network with Terraform Modules

This repository demonstrates how to create and use Terraform modules to deploy an Azure Virtual Network (VNet). The configuration includes a custom Terraform module for creating the VNet and its associated subnets.


## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine
- Azure subscription with sufficient permissions to create resources (VNet, Subnets)
- Azure CLI or Service Principal configured for authentication

## Variables

The module requires the following input variables:

- **vnet_name**: Name of the Virtual Network
- **location**: Azure region where the virtual network will be deployed
- **network_address_space**: CIDR block for the virtual network (e.g., `10.0.0.0/16`)
- **aks_subnet_address_prefix**: CIDR block for the AKS subnet within the virtual network (e.g., `10.0.1.0/24`)
- **aks_subnet_address_name**: Name of the AKS subnet within the virtual network
- **environment**: Environment name (e.g., `dev`, `prod`) to tag the resources

Since default values are not provided for these variables, Terraform will prompt you to input them during the execution.

## How to Use

1. **Clone the repository**:

    ```bash
    git clone <repository-url>
    cd <repository-directory>
    ```

2. **Initialize the Terraform working directory**:

    ```bash
    terraform init
    ```

    This command will download the necessary provider plugins and initialize your working directory.

3. **Review the variables**:

    Before applying the configuration, ensure that you review the variables defined in `variables.tf`. You can either provide the values when prompted or define them in a `terraform.tfvars` file.

4. **Apply the configuration**:

    Run the following command to apply the Terraform configuration:

    ```bash
    terraform apply
    ```

    Terraform will ask you for the values of the required variables, or you can pass them as command-line arguments like this:

    ```bash
    terraform apply \
      -var="vnet_name=my-vnet" \
      -var="location=eastus" \
      -var="network_address_space=10.0.0.0/16" \
      -var="aks_subnet_address_prefix=10.0.1.0/24" \
      -var="aks_subnet_address_name=aks-subnet" \
      -var="environment=dev"
    ```

5. **Verify the resources**:

    Once the deployment is complete, you can verify the created Azure Virtual Network and its subnets in the Azure Portal or by using the Azure CLI:

    ```bash
    az network vnet show --name <vnet_name> --resource-group <resource_group>
    ```

6. **Destroy the resources**:

    To clean up and delete all resources created by this configuration, run:

    ```bash
    terraform destroy
    ```

## Outputs

The module will output the following values:

- **vnet_id**: The ID of the created Virtual Network
- **aks_subnet_id**: The ID of the created AKS subnet

## Customization

You can customize this module further by adding more subnets, security groups, or route tables based on your specific needs. Just edit the `modules/virtual-network/main.tf` file.

## Notes

- Ensure you have proper IAM roles or service principal configurations for Terraform to create resources in your Azure subscription.
- You can also define the required variable values in a `terraform.tfvars` file for convenience instead of providing them in the terminal.

