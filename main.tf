terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c7217cdde317cfec" # Updated Ubuntu 22.04 LTS for us-east-1
  instance_type = "t3.micro"

  tags = {
    Name = "Zubair_Terraform_Demo"
  }
}

