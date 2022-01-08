variable "region" {
  description = "Region to be used for EC2 instance"
  type        = string
  default     = "us-east-1"
}
variable "aws_account_id" {
  default = "870597747842"
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-east-1b", "us-east-1c"]
}

variable "vpc_name" {
  description = "VPC Name to be Created"
  type        = string
  default     = ""
}

variable "vpc_cidr" {
  description = "Public Subnet Lists"
  type        = string
}

variable "public_subnets" {
  description = "Public Subnet Lists"
  type        = list(any)
  default     = []
}

variable "private_subnets" {
  description = "Private Subnet Lists"
  type        = list(any)
  default     = []
}


variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}


variable "repository_url" {
  description = "ECR Repo name"
  type        = string
  default     = ""
}

variable "service_name" {
  default = "django-appnew"
}

variable "container_port" {
  default = "8000"
}

variable "memory_reserv" {
  default = 100
}


#------------------------------------------------------------------------------
# Misc
#------------------------------------------------------------------------------
variable "name_prefix" {
  description = "Name prefix for resources on AWS"
  default     = "dev-ecs"
}

#------------------------------------------------------------------------------
# AWS ECS SERVICE AUTOSCALING
#------------------------------------------------------------------------------
variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  default     = "demo-cluster"
}

variable "ecs_service_name" {
  description = "Name of the ECS service"
}

variable "max_cpu_threshold" {
  description = "Threshold for max CPU usage"
  default     = "85"
  type        = string
}
variable "min_cpu_threshold" {
  description = "Threshold for min CPU usage"
  default     = "10"
  type        = string
}

variable "max_cpu_evaluation_period" {
  description = "The number of periods over which data is compared to the specified threshold for max cpu metric alarm"
  default     = "3"
  type        = string
}
variable "min_cpu_evaluation_period" {
  description = "The number of periods over which data is compared to the specified threshold for min cpu metric alarm"
  default     = "3"
  type        = string
}

variable "max_cpu_period" {
  description = "The period in seconds over which the specified statistic is applied for max cpu metric alarm"
  default     = "60"
  type        = string
}
variable "min_cpu_period" {
  description = "The period in seconds over which the specified statistic is applied for min cpu metric alarm"
  default     = "60"
  type        = string
}

variable "scale_target_max_capacity" {
  description = "The max capacity of the scalable target"
  default     = 5
  type        = number
}

variable "scale_target_min_capacity" {
  description = "The min capacity of the scalable target"
  default     = 1
  type        = number
}



