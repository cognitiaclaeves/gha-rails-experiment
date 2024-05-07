locals {
    local1 = "local1"
}

output "loca" {
    value = locals.local1
}

# An example resource that does nothing.
resource "null_resource" "example" {
    triggers = {
    value = "A example resource that does nothing!"
    }
}

terraform {
  backend "s3" {
    bucket = "tf-state-jnorment"
    key    = "global/savvy-example/terraform.tfstate"
    region = "us-east-1"

    # dynamodb_table = "rearc-data-terraform-state-locks"
    encrypt        = true
  }
}

var "aws_region" {
    type = string
    default = "us-east-1"
}

var "owner" {
    type = string
    default = "jnorment"
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      owner = var.owner
    }
  }
}

#     terraform {
#       backend "remote" {
#         # The name of your Terraform Cloud organization.
#         organization = "example-organization"
#
#         # The name of the Terraform Cloud workspace to store Terraform state files in.
#         workspaces {
#           name = "example-workspace"
#         }
#       }
#     }
#
#     # An example resource that does nothing.
#     resource "null_resource" "example" {
#       triggers = {
#         value = "A example resource that does nothing!"
#       }
#     }