terraform {
  required_providers {
    template = {
      source  = "hashicorp/null"
      version = "~> 3.2"
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
