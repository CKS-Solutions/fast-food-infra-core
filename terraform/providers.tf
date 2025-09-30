provider "aws" {
  region = var.aws_region
}

locals {
  name_prefix = var.name_prefix != "" ? var.name_prefix : "myk8s"
}
