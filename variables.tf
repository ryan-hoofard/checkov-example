variable "environment" {
  type = string
  description = "The environment resources will be deployed to. This will be populated through the GitHub workflow.  Potential values are dev, qa, prod"
}   