
# Defining CIDR Block for VPC
variable "vpc_cidr" {
  default = "192.168.0.0/16"
}

variable "aws_s3_bucket" {
    type = string
    default = "my_bucket_123"
}

