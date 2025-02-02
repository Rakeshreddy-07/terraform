data "aws_ami" "joindevops" {
  owners      = [973714476881]
  most_recent = true
  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]

  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_vpc" "default_vpc" {
  default = true

}

output "vpc_details" {
  value = data.aws_vpc.default_vpc.id

}

output "ami_id" {
  value = data.aws_ami.joindevops.image_id

}

output "arn" {
  value = data.aws_ami.joindevops.arn

}