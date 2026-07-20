terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.17.0"
        }
    }
}

resource "aws_instance" "ec2"{
    ami = ami-0220d79f3f480ecf5
    instance_type = "t3.micro"

}

