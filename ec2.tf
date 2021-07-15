resource "aws_instance" "ec2"{
  ami           = "ami-04bf6dcdc9ab498ca"
  instance_type = "t2.micro"
}


provider "aws" {
  region     = "us-east-1"
  
}

