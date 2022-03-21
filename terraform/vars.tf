variable "prefix" {
  description = "prefix for all resources"
  default     = "udacity-project1"
  type        = string
}
variable "resource-group" {
  description = "Name of the resource group"
  default     = "udacity-projects-rg"
  type        = string
}
variable "packer-rg" {
  description = "Resource group for packer images"
  default     =  "udacity-images-rg"
  type        = string
}
variable "location" {
  description = "Location of Resources"
  default     = "West Europe"
}
variable "number_vm" {
  description = "The umber of VM to be created"
  default     = 2
  type        = number
}
variable "username" {
  description = "username for virtual machines"
  default     = "Amir"
  type        = string
}
variable "password" {
  description = "password for virtual machines"
  default     = "Amir_1234567890"
  type        = string
}

