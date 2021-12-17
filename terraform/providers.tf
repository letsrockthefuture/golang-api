terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }

    # tfe = {
    #   version = "~> 0.26.0"
    # }
  }

  cloud {
    organization = "letsrockthefuture"

    workspaces {
      name = "api-development-us-east-1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
