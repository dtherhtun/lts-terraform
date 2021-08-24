variable "pub_key" {
  type = string
}

variable "is_create_ec2" {
  type    = bool
  default = true
}

variable "num_of_ec2" {
  type        = number
  default     = 1
  description = "number of ec2 instance"
}

variable "size" {
  type    = string
  default = "t3.micro"
}
