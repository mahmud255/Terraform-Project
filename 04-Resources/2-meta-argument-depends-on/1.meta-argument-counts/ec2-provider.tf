#Terraform Block
terraform {
  required_version = "~>1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"

    }
  }
}

#Provider Block
provider "aws" {
  region  = "ap-southeast-1"
  profile = "terraform"

}
