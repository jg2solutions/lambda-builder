variable "aws_region" {
  default = "us-east-2
}

variable "lambda_name" {
  default = "test-lambda"
}

variable "lambda_handler" {
  default = "main.lambda_handler"
}

variable "lambda_runtime" {
  default = "python3.9"
}

variable "lambda_filename" {
  default = "../lambda/lambda.zip"
}
