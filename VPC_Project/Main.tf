provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source           = "./modules/vpc"
  env              = "dev"
  vpc_cidr         = "10.0.0.0/16"
  public_subnets   = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets  = ["10.0.3.0/24", "10.0.4.0/24"]
  azs              = ["us-west-2a", "us-west-2b"]
}
