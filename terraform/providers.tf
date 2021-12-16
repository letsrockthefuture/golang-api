terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }

    tfe = {
      version = "~> 0.26.0"
    }
  }

  cloud {
    organization = "dosedecafeine"

    workspaces {
      name = "go-example-argocd"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
