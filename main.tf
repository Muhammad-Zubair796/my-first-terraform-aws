terraform {
  required_version = ">= 1.2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  # This is the "Remote State" magic part
  backend "s3" {
    bucket         = "zubair-terraform-state-514348993510"
    key            = "dev/terraform.tfstate"
    region         = "eu-north-1"             # The region where your bucket lives
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }
}

provider "aws" {
  region = "eu-north-1" # Stockholm (to match your S3 bucket)
}

resource "aws_instance" "app_server" {
  ami           = "ami-0fa91bc90632c73c9" # Ubuntu 22.04 LTS for eu-north-1
  instance_type = "t3.micro"

  tags = {
    Name = "Zubair_Terraform_Remote_Demo"
  }
}

