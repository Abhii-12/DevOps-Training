variable "redis_name" {
description = "release name"
type = string
}

variable "redis_repository" {
 description = "Repository URL where to locate the requested chart." 
 type = string
 }

 variable "redis_chart" {
 description = "Chart name to be installed" 
 type = string
 }

variable "redis_namespace" {
 description = "The namespace to install the release into" 
 type = string
}