provider "aws" {
    region = var.aws_region
}

resource "aws_lambda_function" "lambda_builder" {
    

    function_name       = var.lambda_name
    role                =  aws_iam_rolew.lambda_role.arn
    handler             = var.lambda_handler
    runtime             = var.lambda_runtime
    filename            = var.lambda_filename
    source_code_hash    = filebase64sha25(var.lambda_filename)

    environment {
        variables = {
            ENV = "test"
        }
    }
}