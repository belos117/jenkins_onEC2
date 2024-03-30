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

variable "ami" {
  description = "AMI for Operating System"
  type        = string
  default     = "ami-0c1c30571d2dae5c9"
}

variable "associate_public_ip_address" {
  description = "Associate public IP address"
  type        = bool
  default     = true

}