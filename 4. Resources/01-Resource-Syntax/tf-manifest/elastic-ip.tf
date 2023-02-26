#Resource-8: Elastic IP Create
resource "aws_eip" "my-eip" {
  instance = aws_instance.ec2-vm.id
  vpc      = true
  #Meta-Argument
  depends_on = [aws_internet_gateway.vpc-dev-igw]


}
