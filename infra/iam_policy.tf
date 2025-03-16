resource "aws_iam_policy" "lambda_policy" {
  name        = "lambda_logg_policy"
  description = "Permissão para logs da Lambda"

  policy = file("${path.module}/iam_policy.json")
}

resource "aws_iam_role_policy_attachment" "lambda_logs" {
  policy_arn = aws_iam_policy.lambda_policy.arn
  role       = aws_iam_role.lambda_role.name
}
