variable "ctrl_password" {}

variable "ctrl_ip" {
  default = ""
}

variable "gw_name" {
  default = "gwname"
}

variable "site_id" {
  default = "sitename"
}

variable "management_interface_ip" {
  default = "10.50.0.1/24"
}


variable "management_interface_config" {
  default = "Static"
}

variable "management_egress_ip_prefix" {
  default = "10.80.0.0/24"
}

variable "wan_interface_ip_prefix" {
  default = "10.70.0.2/24"
}

variable "wan_default_gateway_ip" {
  default = "10.70.0.1"
}

variable "lan_interface_ip_prefix" {
  default = "10.80.0.0/24"
}

variable "management_interface_ip_prefix" {
  default = "10.60.0.2/24"
}

variable "management_default_gateway_ip" {
  default = "10.60.0.1"
}

variable "dns_server_ip" {
  default = "10.60.0.1"
}
variable "access_key" {
  default = ""
}


variable "secret_key" {
  default = ""
}
