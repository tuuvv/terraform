---

# AWS EC2 Deployment with Terraform

This repository demonstrates how to set up and deploy an AWS EC2 instance using **Terraform**.

## Prerequisites

- **AWS CLI** installed on your system.
- **Terraform** installed via [Chocolatey](https://chocolatey.org/) or other package managers.
- AWS account with sufficient permissions to deploy EC2 instances.

## AWS CLI Setup

1. Verify AWS CLI is installed:
   ```bash
   aws --version
   ```

2. Configure AWS CLI with your credentials:
   ```bash
   aws configure
   ```
   Provide:
   - AWS Access Key ID
   - AWS Secret Access Key
   - Default region name (e.g., `ap-southeast-1` for Singapore)
   - Default output format (e.g., `json`)

3. Verify your AWS identity:
   ```bash
   aws sts get-caller-identity
   ```

4. List your S3 buckets (optional):
   ```bash
   aws s3 ls
   ```

## Generate an SSH Key Pair

To access your EC2 instance, generate an SSH key pair:
```bash
ssh-keygen -t rsa -b 4096 -C "vuvantuu.gl@gmail.com"
```

Enter the path where you want to save the key (e.g., `./keypair/udemy-key`).

## Install Terraform

1. Install Terraform via Chocolatey:
   ```bash
   choco install terraform --force
   ```

2. Verify the installation:
   ```bash
   terraform -version
   ```

## Terraform Configuration

1. **Initialize** Terraform:
   ```bash
   terraform init
   ```

2. **Plan** the infrastructure:
   ```bash
   terraform plan
   ```

3. **Apply** the changes to deploy EC2:
   ```bash
   terraform apply
   ```

4. **Destroy** the infrastructure when done:
   ```bash
   terraform destroy
   ```


## Commands Reference

- `terraform init`: Initializes the Terraform configuration.
- `terraform plan`: Creates an execution plan for the resources.
- `terraform apply`: Applies the execution plan and provisions the infrastructure.
- `terraform destroy`: Destroys the provisioned infrastructure.

---
