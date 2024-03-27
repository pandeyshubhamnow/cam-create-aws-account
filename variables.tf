

variable "region" {
  type = string
  default = "us-east-1"
}

variable "account_name" {
  type = string
  description = "(Required) Account Name"
}

variable "root_email" {
  type = string
  description = "(Required) Account Email"
}

variable tags{
  type = map(string)
  description = "(Required) Tags for the resource"
}

variable monthly_budget {
  type = number
  default = 0
}

variable notification_email {
  type = string
  description = "Additional email where Budget Notifications are to be sent"
}
