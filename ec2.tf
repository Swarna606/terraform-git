resource "aws_instance" "ec2"{
  ami           = "ami-04bf6dcdc9ab498ca"
  instance_type = lookup(var.instance_type,terraform.workspace)
}


provider "aws" {
  region     = "us-east-1"
  secret_key = "w6r5YESbE94PF+eozqZiExf8dED8rA/4nlGtQBBH"
  access_key = "AKIA5S5EPWECVIHX5G2E"
}
variable "instance_type" {
  type = "map"

  default = {
    default = "t2.micro"
    dev     = "t2.large"
    prod    = "t2.small"
  }
}
