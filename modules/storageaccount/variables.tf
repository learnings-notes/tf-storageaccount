variable "resource_group" {
  type    = string
  default = "appsvc"
}
variable "location" {
  type    = string
  default = "eastus"
}
variable "sa_name" {
  type    = list(string)
  default = ["testingazurenwsetting", "testingazurenwsettin2"]
}
