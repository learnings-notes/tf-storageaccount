variable "projectName" {
  type    = string
  default = "appsvc"
}
variable "env" {
  type    = string
  default = "dev"
}
variable "location" {
  type    = string
  default = "eastus"
}

variable "sa_name" {
  type    = list(string)
  default = ["testingazurenwsetting", "testingazurenwsettin2"]
}

