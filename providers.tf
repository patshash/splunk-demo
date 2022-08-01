terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "=3.42.0"
    }
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 2.20.0"
    }
    acme = {
        source = "vancluever/acme"
        version = "~> 2.0"
    }
  }
}