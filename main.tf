terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 1.1.0"
}

provider "aws" {
  access_key = ${AWS_ACCESS_KEY}
  secret_key = ${AWS_SECRET_ACCESS_KEY}
  profile    = "default"
  region     = "ap-northeast-1"
}


resource "aws_instance" "app_server" {
        ami           = "ami-074d0f8d7e3de77de"
        instance_type = "t2.micro" 
        subnet_id      = "subnet-02db8bccf5a3e69d5"
        vpc_security_group_ids = ["sg-0068e7288604485cc"]

        tags = {
        Name = "Cloud Gateway by Terraform"
        }
}
