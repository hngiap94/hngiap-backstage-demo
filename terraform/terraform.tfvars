# General
project = "backstage"
default_region = "us-east-1"
vpc_cidr_block = "10.0.0.0/16"
public_subnets = {
  "us-east-1a" = "10.0.0.0/24",
  "us-east-1b" = "10.0.1.0/24"
}