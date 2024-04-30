variable "ami_id" {
  description = "The AMI ID for the instance"
  default     = "ami-0913c47048d853921" // Amazon Linux 2 AMI ID
}

variable "instance_type" {
  description = "The instance type for the instance"
  default     = "t2.micro"
}

variable "key_name_instance" {
  description = "The key pair name for the instance"
  default     = "my-nick-test-key"
}


