terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4"
    }
  }
}

provider "aws"{
  profile = var.profile
  region  = var.default-region
  
  default_tags {
    tags = {
      CustodianRule = "ecc-aws-175-cloudtrail_enabled_in_all_regions"
      ComplianceStatus = "Green1"
    }
  }
}