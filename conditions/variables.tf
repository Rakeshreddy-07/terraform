variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is RHEL9 AMI ID"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "use thid ami type as this is light weight"
}

variable "environment" {
  type = string
  default = "dev"
  
}

variable "ec2_tags" {
  type = map(any)
  default = {
    Name        = "expense"
    Environment = "DEV"
    Server      = "backend"
    Purpose     = "expense-backend"

  }
}

variable "from_port" {
  type    = number
  default = 22
}

variable "to_port" {
  type    = number
  default = 22
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map(any)
  default = {
    Name    = "security group"
    Purpose = "expense-project"
  }

}