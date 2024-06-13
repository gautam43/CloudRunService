variable "project_id" {
    description = "value of project id "
    type = string
    default = ""
}

variable "region" {
    description = "Region"
    type = string
    default = "us-east4"
}


variable "name" {
    description = "Name of the cloud run service"
    type = string
    default = "myhelloworld"
}

variable "location" {
    description = "Location in which cloud run service will be deployed"
    type = string
    default = ""
}

variable "image" {
    description = "Image full name with path"
    type = string
    default = ""
}

