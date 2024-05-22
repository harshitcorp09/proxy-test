terraform {
  cloud {
    hostname = "harshit-tfe-fdo-docker-mounted-disk.tf-support.hashicorpdemo.com"
    organization = "cli-driven"

    workspaces {
      name = "test"
    }
  }
}
provider "aws" {
 region = "ap-south-1"
}
resource "aws_instance" "TFE-Harshit" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"
  tags = {
    Name = "Test-FDO-Harshit"
  }
}
