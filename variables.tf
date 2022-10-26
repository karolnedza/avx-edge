#variable "region" {}
#
# variable "account_name" {
#   type        = map(string)
#   default     = {
#     "eu-central-1" = "aws-account",
#     "us-east-1" =   "aws-account",
#     "West Europe" = "azure-account-sec"
#   }
# }

variable "ctrl_password" {}

variable "ctrl_ip" {
  default = ""
}

variable "access_key" {
  default = ""
}

variable "secret_key" {
  default = ""
}


# variable "network_domain" {}
#
#
# variable "transit_gw" {
#   type        = map(string)
#   default     = {
#     "eu-central-1" = "aws-tgw-eu-central-1",
#     "us-east-1" =   "aws-tgw-us-east-1",
#     "West Europe" = "az-tgw-west-europe"
#   }
# }
