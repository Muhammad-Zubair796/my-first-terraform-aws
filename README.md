```markdown
# 🚀 Multi-Tier AWS Infrastructure with Remote State Management
## 🌟 Project Overview
This project demonstrates a professional transition from a **Local Monolithic Infrastructure** to a **Cloud-Native Remote State Architecture**. I have successfully deployed an automated EC2 environment in the **Stockholm (eu-north-1)** region using Terraform best practices.

## 🛠️ What I Accomplished

### 1. Remote Backend Implementation 🔐
Instead of keeping the sensitive `terraform.tfstate` file on my local machine, I built a dedicated backend infrastructure:
* **S3 Bucket Storage:** Securely hosts the state file in the cloud.
* **DynamoDB State Locking:** Implemented a locking mechanism to prevent race conditions and state corruption during team collaboration.

### 2. Infrastructure as Code (IaC) 💻
* **Provider:** Scalable AWS configuration.
* **Resource:** Automated deployment of an **Ubuntu 24.04 LTS** instance.
* **Dynamic Intelligence:** Configured the project to handle region-specific AMI IDs.

### 3. Professional Output Tracking 📑
* Created a decoupled `outputs.tf` to instantly retrieve critical data like **Public IP** and **Instance ID** without accessing the AWS Console.

---

## 📂 Directory Structure

```text
.
├── main.tf           # Provider, Backend, and EC2 definitions
├── outputs.tf        # Infrastructure "Receipt" (Public IPs/IDs)
├── .gitignore        # Security filter for sensitive TF files
└── README.md         # The documentation you are reading

```

---

## 🚀 Deployment Guide

### Step 1: Initialize

Connects your local environment to the S3 & DynamoDB Backend.

```bash
terraform init

```

### Step 2: Plan

Preview changes before they happen in AWS.

```bash
terraform plan

```

### Step 3: Apply

Execute the build.

```bash
terraform apply -auto-approve

```

---

## 🔧 Technical Stack

| Component | Technology |
| --- | --- |
| **Cloud Provider** | AWS (eu-north-1) |
| **IaC Tool** | Terraform v1.x |
| **Backend Storage** | Amazon S3 |
| **Concurrency Control** | Amazon DynamoDB |
| **Server OS** | Ubuntu 24.04 Noble Numbat |

---

## 🎓 Lessons Learned

* **State Migration:** How to move local state to a remote bucket without breaking resources.
* **Provider Constraints:** Handling AMI ID differences between regions (Virginia vs. Stockholm).
* **Security:** Using `.gitignore` to protect sensitive cloud metadata.

