#AWS EC2 Instance

resource "aws_instance" "ec2-vm" {
  ami               = "ami-0f2eac25772cd4e36"
  instance_type     = "t2.micro"
  availability_zone = "ap-southeast-1b"

  tags = {
    "Name" = "Terraform"
    "ENV"  = "Dev"
  }

}
