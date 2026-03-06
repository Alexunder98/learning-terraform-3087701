variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "Name filter and owner for ami"
  type = object({
    name   = string
    owners = string
  })

  default = {
    name   = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owners = "979382823631" # Bitnami]
   }
}

## AWS VPC
variable "environment" {
  description = "Environment name for tagging and naming resources"
  type = object({
    name           = string
    network_prefix = string
  })

  default = {
    name           = "dev"
    network_prefix = "10.0"
  }
}

variable "min_size" {
  description = "Minimum number of instances for the ASG - Auto Scaling group"
  default     = 1
}

variable "max_size" {
  description = "Maximum number of instances for the ASG - Auto Scaling group"
  default     = 2
}