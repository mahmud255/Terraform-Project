#5 AWS EC2 Instance

resource "aws_instance" "web" {
  ami           = "ami-0f2eac25772cd4e36" #amazon linux
  instance_type = "t2.micro"
  count         = 5

  tags = {
    #"Name" = "web"
    "Name" = "web-${count.index}"
    #"Name" = "web-${count.index}"
  }

}

