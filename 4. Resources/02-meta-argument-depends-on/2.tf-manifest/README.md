## Terraform Resource Meta-Argument depends_on

```
- Create Terraform Block
- Create Provider Block
- Create 9 Resource Blocks
  - Create VPC
  - Create Subnet
  - Create Internet Gateway
  - Create Route Table
  - Create Route in Route Table for Internet Access
  - Associate Route Table with Subnet
  - Create Security Group in the VPC with port 80, 22 as inbound open
  - Create EC2 Instance in respective new vpc, new subnet created above with a static key pair, associate Security group created earlier
  - Create Elastic IP Address and Associate to EC2 Instance
  - Use `depends_on` Resource Meta-Argument attribute when creating Elastic IP 
  ``` 
