data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnets" "private" {
  filter {
    name   = "tag:Name"
    values = [var.subnet_name]
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_security_group" "rds_sg" {
  filter {
    name   = "tag:Name"
    values = ["fast-food-rds-postgres"]
  }
}