# This file contains all the variables that are used in the Terraform configuration.

variable "aws_region" {
  description = "The AWS region to deploy resources"
  type = string
  default = "us-west-2"
}

variable "s3_bucket_name" {
  description = "S3 bucket to create for file archival and storage"
  type = string
}

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster to create"
  type = string
}

variable "ecs_task_role_name" {
  description = "Name of the task role to create"
  type = string
  #default = "ecsTaskRole"
}

variable "log_group_name" {
  description = "Name of the CloudWatch log group to create"
  type = string
  #default = "/ecs/obdviewer-logs"
}

variable "app_log_group_name" {
  description = "The name of the application log group"
  type        = string
}

variable "account_vpc_name" {
  description = "The name of the VPC to query"
  type = string
}


variable "ecr_repository_name" {
  description = "The name of the existing ECR repository"
  type        = string
}

variable "environment" {
  description = "The environment being deployed (e.g., Sandbox, UAT, DEV, PROD)"
  type = string
}


variable "docker_image_tag" {
  description = "Tag of the Docker image"
  type = string
  default     = "latest"
}

variable "private_subnet_az1" {
  description = "Tag for private subnet in Availability Zone 1"
  type        = string
}

variable "private_subnet_az2" {
  description = "Tag for private subnet in Availability Zone 2"
  type        = string
}

variable "owner_name" {
  description = "Owner/Project name"
  type = string
  default = "obdviewer"
}

variable "domain"{
  description = "domain name"
  type = string
}

variable "ecs_cpu"{
  description = "CPU capacity"
  type = number
}

variable "ecs_memory"{
  description = "memory capacity"
  type = number
}

variable "rds_sg"{
  description = "RDS security group name"
  type = string
}


#-----------pipeline variables----------------

variable "pipeline_name" {
  description = "The name of the CodePipeline"
  # default = "app-code-pipeline"
}

variable "github_repo" {
  description = "GitHub repository to pull source from"
  # default = "user/repo-name" 
}

variable "github_branch" {
  description = "Branch of the repository"
  # default = "sandbox"
}

#----------Code Star connection----------
variable "codestar_connection_name" {
  description = "The name of the CodeStar connection"
  # default = "arn:aws:codestar-connections: " 
}
