variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "subnet_id" {}
# variable "instance_names" {
#   type        = list(string)
#   description = "List of names for the instances to create."
# }
variable "security_group_id" {
  description = "Security group ID to assign to the instance"
  type        = string
}

variable "instance_count" {
  description = "The number of instances to create"
  type        = number
  default     = 1  // Default to one instance if not specified
}