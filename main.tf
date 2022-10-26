module "branch1" {
  source  = "terraform-aviatrix-modules/mc-edge/aviatrix"
  version = "1.1.1"

  site_id = var.site_id
  ztp_file_download_path = "${path.module}"
  edge_gws = {
    gw1 = {
      management_interface_config = "Static"
      management_interface_ip = var.management_interface_ip_prefix
      gw_name                 = var.gw_name
      management_egress_ip_prefix = var.management_egress_ip_prefix
      wan_interface_ip_prefix = var.wan_interface_ip_prefix
      wan_default_gateway_ip  = var.wan_default_gateway_ip
      lan_interface_ip_prefix = var.lan_interface_ip_prefix
      management_interface_ip_prefix  = var.management_interface_ip_prefix
      management_default_gateway_ip  = var.management_default_gateway_ip
      dns_server_ip = var.dns_server_ip
      secondary_dns_server_ip = var.dns_server_ip
      ztp_file_download_path = "${path.module}"
      transit_gws = {
        transit1 = {
          name = "aws-tgw-eu-central-1",
          #attached = true
        },
      }
    }
  }
}


resource "aws_s3_object" "cfg_upload" {
  bucket = "aviatrixnow"
  key    = "${var.gw_name}-${var.site_id}.iso"
  source = "${path.module}/${var.gw_name}-${var.site_id}.iso"
  depends_on = [module.branch1]
  acl = "public-read"

}
