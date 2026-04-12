variable "aws_region" {
  type = string
}

variable "ami_id" {
   type = string 
}

variable "instance_type" {
   type = string 
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment (dev/stage/prod)"
  type        = string
}

variable "key_name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "root_volume_size" {
  type    = number
  default = 8
}

variable "root_volume_type" {
  type    = string
  default = "gp3"
}

variable "iam_instance_profile" {
  description = "Existing IAM instance profile name"
  type        = string
}