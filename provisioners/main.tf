resource "aws_instance" "test" {
ami = "ami-0220d79f3f480ecf5"
instance_type = "t3.small"
vpc_security_group_ids = ["sg-0b664c01a2a25bc88"]


provisioner "remote-exec" {
    connection {
        type = "ssh"
        host = self.public_ip
        user = "ec2-user"
        password = "DevOps321"

    }
    inline = [
        "echo hello >/root/some"
    ]
}

}

provider "aws" {
    region = "us-east-1"
}


