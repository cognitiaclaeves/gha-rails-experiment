terraform {
  required_version = "~> 1.8.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.48.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2.2"
    }
  }
    
  backend "s3" {
    bucket = "tf-state-jnorment"
    key    = "global/savvy-example/terraform.tfstate"
    region = "us-east-1"

    # dynamodb_table = "rearc-data-terraform-state-locks"
    encrypt = true
  }
}
