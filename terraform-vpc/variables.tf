variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for subnet"
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "ami" {
  description = "AMI ID for EC2"
  default     = "ami-06f1fc9ae5ae7f31e" # Amazon Linux 2 in us-east-1
}

variable "key_name" {
  description = "SSH key pair name"
  default     = "aws_login2"
}
