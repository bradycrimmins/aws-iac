# Scalable AWS Infrastructure with Terraform

This project demonstrates how to create a scalable and high-availability web application architecture using Terraform on AWS. It leverages various AWS services, including EC2, Auto Scaling Groups, Application Load Balancer (ALB), VPC, and subnets, to deploy a resilient web application that can dynamically scale according to load.

## Features

- **VPC Creation**: Sets up a Virtual Private Cloud (VPC) to isolate your web application infrastructure in AWS.
- **Subnet Configuration**: Creates multiple subnets across different Availability Zones (AZs) for high availability.
- **Application Load Balancer (ALB)**: Utilizes an ALB to distribute incoming traffic among EC2 instances evenly.
- **Auto Scaling**: Implements an Auto Scaling Group (ASG) to automatically adjust the number of EC2 instances according to the demand.
- **Security Groups**: Defines security groups to manage access to EC2 instances, allowing HTTP traffic on port 80.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- An AWS account with the necessary permissions to create the resources mentioned.
- AWS CLI installed and configured with your credentials.

## How to Deploy

1. **Clone the Repository**

   Clone this repository to your local machine to get started.

   ```bash
   git clone <repository-url>
   ```

2. **Initialize Terraform**

   Navigate to the project directory and initialize Terraform to download the necessary providers.

   ```bash
   cd path/to/project
   terraform init
   ```

3. **Review the Plan**

   Review the Terraform execution plan to understand the actions Terraform will perform.

   ```bash
   terraform plan
   ```

4. **Apply the Configuration**

   Apply the Terraform configuration to start deploying the infrastructure.

   ```bash
   terraform apply
   ```

   Confirm the action when prompted to proceed with the creation of the resources.

5. **Access Your Application**

   Once the deployment is complete, Terraform will output the DNS name of the ALB. Use this DNS name in your web browser to access your application.

## Customization

- Update the `provider.tf` with the region you prefer to deploy your resources.
- Modify the `cloud_db_string` and `on_prem_db_string` in the scripts to match your actual database connection strings.
- Adjust the instance types, AMI IDs, and scaling parameters in `autoscaling.tf` as necessary to fit your application's needs.

## Cleanup

To remove the deployed resources, run:

```bash
terraform destroy
```

Confirm the action when prompted to avoid incurring unnecessary charges in your AWS account.

## Contributing

Contributions to this project are welcome! Please fork the repository and submit a pull request with your proposed changes.

## License

This project is open-source and free for personal or commercial use.
