module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "lambda-demo"
  description   = "Demo de despliegue con modulo de lambda"
  handler       = "lambda.lambda_handler"
  runtime       = "python3.8"

  source_path = "./lambda"

  tags = {
    Name = "demo"
  }
}