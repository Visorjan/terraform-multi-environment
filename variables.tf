variable "region" {
  description = "Default region"
  type        = string
  default     = "eu-central-1"
}

variable "dev_vpc_cidr" {
  description = "CIDR block to be used for development vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "dev_subnet_cidr" {
  description = "CIDR block to be used for development subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "staging_vpc_cidr" {
  description = "CIDR block to be used for staging vpc"
  type        = string
  default     = "10.1.0.0/16"
}

variable "staging_subnet_cidr" {
  description = "CIDR block to be used for staging subnet"
  type        = string
  default     = "10.1.1.0/24"
}

variable "prod_vpc_cidr" {
  description = "CIDR block to be used for production vpc"
  type        = string
  default     = "10.2.0.0/16"
}

variable "prod_subnet_cidr" {
  description = "CIDR block to be used for production subnet"
  type        = string
  default     = "10.2.1.0/24"
}

variable "instance_ami" {
  description = "AMI id to be used for instances created"
  type        = string
  default     = "ami-00d7be712d19c601f"
}

variable "instance_type" {
  description = "Instance type to be used for this project"
  type        = string
  default     = "t2.micro"
}
