# AWS Infrastructure with Terraform Remote State

## Project Overview
This project marks my transition from managing Terraform state files locally to using a professional cloud-based backend. I deployed a functional Ubuntu instance in the Stockholm (eu-north-1) region while ensuring the infrastructure state is secure and collaborative.

## Key Implementation Details

### 1. Remote State & Locking
Instead of storing the sensitive `terraform.tfstate` file on my local machine, I configured an S3 bucket to host the state. To prevent multiple people from making changes at the same time, I integrated a DynamoDB table for state locking.

### 2. Automated EC2 Deployment
The core of this project is a `t3.micro` instance running Ubuntu 24.04 LTS. I handled the regional AMI differences specifically for the Stockholm region to ensure a smooth deployment.

### 3. Clean Outputs
I used an `outputs.tf` file to track the Public IP and Instance ID. This allows me to see the connection details directly in the terminal without having to log into the AWS Console every time.

## Project Structure
* **main.tf**: Defines the AWS provider, S3 backend configuration, and the EC2 instance.
* **outputs.tf**: Provides the IP address and Instance ID after a successful apply.
* **.gitignore**: Ensures that local terraform folders and sensitive state backups aren't pushed to GitHub.

## How to Run This Project
1. **terraform init**: Initializes the project and connects to the S3/DynamoDB backend.
2. **terraform plan**: Displays the resources that will be created.
3. **terraform apply**: Deploys the infrastructure to AWS.

## Lessons Learned
* How to migrate local state to S3 without losing data.
* Solving the "InvalidAMIID" error by mapping correct IDs to the Stockholm region.
* Maintaining a clean repository by filtering out unnecessary Terraform files.

---
**Maintained by:** Muhammad-Zubair796
