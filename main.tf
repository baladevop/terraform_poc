provider "aws" { 
  region     = "ap-south-1"
}


variable "env" {
}


resource "aws_s3_bucket" "demo-mcd058" {
    count = "${var.env == "true"?1:0}"
    bucket = "demo-mcd-58"
}

resource "aws_instance" "MCDpoc"{
    count = "${var.env == "false" ? 1: 0}"
    ami = "ami-04505e74c0741db8d"
    instance_type = "t2.micro" 
}
