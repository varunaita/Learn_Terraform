resource "aws_ami_from_instance" "sample" {
  name               = "terraform_sample"
  source_instance_id = "ami-0220d79f3f480ecf5"
}
