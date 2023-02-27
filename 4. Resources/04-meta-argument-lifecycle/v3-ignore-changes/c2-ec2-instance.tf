#Create EC2 Instance

resource "aws_instance" "web" {
  ami               = "ami-0f2eac25772cd4e36"
  instance_type     = "t2.micro"
  availability_zone = "ap-southeast-1a"
  #availability_zone = "ap-southeast-1a"

  tags = {
    "Name" = "Ignore-Changes"
  }
  /*
  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,

    ]
  }
*/
}
