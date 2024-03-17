variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "Map of subnet names to CIDR blocks"
  type        = map(string)
}

