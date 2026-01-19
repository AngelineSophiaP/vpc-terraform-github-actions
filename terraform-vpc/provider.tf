terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "terraform-githubactions-demo"   # your S3 bucket name
    key    = "terraform/state.tfstate"       # path inside bucket
    region = "us-east-2"                     # bucket region
    # optional: dynamodb_table = "terraform-locks"  # for state locking
  }
}

provider "aws" {
  region = "us-east-2"
}
