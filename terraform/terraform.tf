terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.30.0"   # Latest AWS provider version as of now
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.0"    # Latest random provider version as of now
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"    # This is already the latest version
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"    # This is already the latest version
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.26.0"   # Latest Kubernetes provider version as of now
    }
  }

  backend "s3" {
    bucket = "vprofileactions101"
    key    = "terraform.tfstate"
    region = "eu-north-1"
  }

  required_version = "~> 1.6.6"  # Latest Terraform version as of now
}
