resource "aws_iam_user" "admin-user" {
  name = "testUser1"
  tags = {
    Decription = "Technical Team Leader"
  }
}

resource "aws_iam_policy_attachment" "admin-access" {
  name       = file("admin-policy.json")
  users      = aws_iam_user.admin-user.name
  policy_arn = "arn:aws:iam::058264085477:policy/AdminUsers"
}

