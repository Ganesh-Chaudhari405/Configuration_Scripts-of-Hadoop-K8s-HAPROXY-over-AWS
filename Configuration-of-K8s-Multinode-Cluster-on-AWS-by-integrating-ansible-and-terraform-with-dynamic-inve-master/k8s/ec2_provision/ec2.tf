provider "aws" {
  region = "ap-south-1"

}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "all" {
  vpc_id = data.aws_vpc.default.id
}



resource "aws_instance" "master" {

  ami = "ami-08e0ca9924195beba"
  instance_type = "t2.micro"
  key_name= "vpc"
  count= 1

  tags={
  Name="master"

  }
}
resource "aws_instance" "slave" {

  ami = "ami-08e0ca9924195beba"
  instance_type = "t2.micro"
  key_name= "vpc"
  count= 2

  tags={
  Name="slave"

  }

}


