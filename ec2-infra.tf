provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-08b5b3a93ed654d19"
instance_type = "t2.micro"
key_name = "Mahendra.pem"
vpc_security_group_ids = ["sg-0deb3ce7556848dbc"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
