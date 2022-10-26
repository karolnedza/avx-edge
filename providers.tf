provider "aviatrix" {
  username = "admin"
  controller_ip = var.ctrl_ip
  password = var.ctrl_password
}


terraform {
    required_providers {
      aviatrix = {
            source  = "aviatrixsystems/aviatrix"
            version = "2.24.0"
        }
    }
}

provider "aws" {
  region     = "eu-central-1"
  access_key =  var.access_key
  secret_key = var.secret_key
}
