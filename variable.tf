variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment (dev/stage/prod)"
  type        = string
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  type = string
}

variable "route_cidr_block" {
  description = "Route to internet"
  type        = string
  default     = "0.0.0.0/0"
}

variable "enable_dns_support" {
  type    = bool
  default = true
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "aws_region" {
  type = string
}

variable "public_key_path" {
  description = "Path to public key (.pub)"
  type        = string
}

variable "ami_id" {
   type = string 
}

variable "instance_type" {
   type = string 
}

variable "iam_instance_profile" {
  type = string
}

variable "root_volume_size" {
  type = number
}