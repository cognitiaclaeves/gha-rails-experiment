locals {
  local1 = "local1"
}

output "loca" {
  value = local.local1
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "owner" {
  type    = string
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
