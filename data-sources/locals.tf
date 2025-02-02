locals {
  ami_id = data.aws_ami.joindevops.image_id
  instance_type = "t3.micro"
  project = "${var.environment}-${var.project}-${var.component}"

}