terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  backend "remote" {
    organization = "brambles"
    
    workspaces {
      name = "gh-actions-demo"
    }
  }
}

# Create a key pair

resource "aws_key_pair" "key" {
  key_name   = var.key_name
  public_key = var.public_key
}

# Create a Network Load Balancer

#resource "aws_lb" "lb" {
#  name               = var.nlb_name
 # internal           = var.nlb_internal
  #load_balancer_type = var.nlb_load_balancer_type
  #subnets            = [var.subnet_id]

  #tags = {
   # Named = "var.nlb_tag_name"
 # }
#}

