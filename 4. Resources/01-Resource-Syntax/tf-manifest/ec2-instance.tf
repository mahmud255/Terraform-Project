resource "aws_instance" "ec2-vm" {
  ami               = "ami-082b1f4237bd816a1"
  instance_type     = "t2.micro"
  availability_zone = "ap-southeast-1a"
  tags = {
    "Name" = "web"
  }

}
