#Create EC2
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.28.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "myEC1"{
    ami = "ami-05fa00d4c63e32376"
    instance_type = "t2.micro"

    tags = {
        name = "Demo VM"
    }
}
