terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.18.0"
    }
  }
  required_version = ">=0.13.0"
  backend "s3" {
    bucket         = "esoft-test-bucket"
    key            = "state/terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
    dynamodb_table = "esoft-state-locking"
  }
}
