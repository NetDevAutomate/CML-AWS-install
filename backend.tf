terraform {
  backend "s3" {
    bucket         = "taylaand-aws-cml-tfstate"
    key            = "terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "taylaand-aws-cml-tfstate-lock"
    encrypt        = true
  }
}

module "backend" {
  source = "./modules/backend"
  prefix = "taylaand"
  region = "eu-west-1"
}
