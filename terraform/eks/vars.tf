variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "Name of EKS Cluster"
  type        = string
}

variable "instanceSize" {
  description = "Size of the nodes in the cluster"
  type        = string
}

variable "clusterVersion" {
  description = "Version of Kubernetes for cluster"
  type = string
}

variable "access_key_id" {
  description = "AWS Access ID"
  type = string
}

variable "access_key_secret" {
  description = "AWS Access Secret"
  type = string
}