resource "aws_iam_user" "admin-user" {
  name = var.VAR_USER_NAME
  tags = {
    Decription = "Technical Team Leader"
  }
}

resource "aws_iam_user_policy_attachment" "admin-access" {
  user = aws_iam_user.admin-user.name
  policy_arn = "arn:aws:iam::058264085477:policy/S3-List-Read"
}


