variable "account_cidr" {
  description = "CIDR Block for the management account"
  type        = string
  default     = "192.168.0.0/24"
}

variable "region" {
  description = "Region name"
  type        = string
  default     = "eu-west-2"
}

variable "account_name" {
  description = "The value required for the account name tag"
  type        = string
  default     = "test_account"
}

variable "environment" {
  description = "environment value"
  type        = string
  default     = "dev"
}

