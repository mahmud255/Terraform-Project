#Creating 4 IAM users
resource "aws_iam_user" "myuser" {
  for_each = toset(["IMahmud", "ISeyam", "IShihab", "IShayan"])
  name     = each.value


}
