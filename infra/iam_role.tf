resource "aws_iam_role" "lambda_role" {
    name = "lambda_exec_rolexx"

    assume_role_policy = file("${path.module}/iam_role_policy.json")
}