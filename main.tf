terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/24"
    instance_tenancy = "default"

    tags = {
      "name" = "Holman-terra-remote"
    }
}
