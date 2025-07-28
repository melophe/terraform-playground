# Terraform configuration
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">3.0"
    }
  }
}

#provider
provider "aws" {
  # profile = "aws"
  region  = "ap-northeast-1"
}

#variables
variable "project" {
  type        = string
  description = "name"
}

variable "environment" {
  type        = string
  description = "name"
}

output "project" {
  value = var.project
}

output "environment" {
  value       = var.environment
  description = "test"
  sensitive   = false
}
