resource "aws_instance" "ec2-vm" {
  ami                    = "ami-0f2eac25772cd4e36"
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  subnet_id              = aws_subnet.vpc-dev-public-subnet-1.id
  vpc_security_group_ids = [aws_security_group.dev-vpc-sg.id]
  /*#user_data              = file("apache-install.sh")
  user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo service httpd start
    sudo systemctl enable httpd
    echo "<h1> AWS Infra Created using Terraform in Singapore Region!!</h1>" >> /var/www/html/index.html
    EOF*/


  #availability_zone = "ap-southeast-1b"

  tags = {
    "Name" = "Apache"
    "ENV"  = "Dev"
  }

}
