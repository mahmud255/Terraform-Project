# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "terraform" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "ap-southeast-1" # Amazon Linux in us-east-1, update as per your region
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0b7e55206a0a22afc" 
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}