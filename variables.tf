variable "region" {
  description = "Region to deploy instance"
  type        = string
  default     = "eu-west-1"
}

variable "instance_type" {
  description = "instance type to deploy instance"
  type        = string
  default     = "t3.micro"
}