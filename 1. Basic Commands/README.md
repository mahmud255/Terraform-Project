# Terraform Command Basics

## Step-01: Introduction
  ```
  - Understand basic Terraform Commands
  - terraform init
  - terraform validate
  - terraform plan
  - terraform apply
  - terraform destroy      
```

## Step-02: Review terraform manifest for EC2 Instance
- **Pre-Conditions-1:** Ensure **default-vpc** in that respective region
- **Pre-Conditions-2:** Ensure AMI you are provisioning exists in that region if not update AMI ID 
- **Pre-Conditions-3:** Verify your AWS Credentials in **$HOME/.aws/credentials**


## Step-03: Terraform Core Commands
```t
# Initialize Terraform
terraform init

# Terraform Validate
terraform validate

# Terraform Plan to Verify what it is going to create / update / destroy
terraform plan

# Terraform Apply to Create EC2 Instance
terraform apply 
```

## Step-04: Verify the EC2 Instance in AWS Management Console
- Go to AWS Management Console -> Services -> EC2
- Verify newly created EC2 instance



## Step-05: Destroy Infrastructure
```t
# Destroy EC2 Instance
terraform destroy

# Delete Terraform files 
rm -rf .terraform*
rm -rf terraform.tfstate*
```

## Step-08: Conclusion
```
  - terraform init
  - terraform validate
  - terraform plan
  - terraform apply
  - terraform destroy   
  ```  
