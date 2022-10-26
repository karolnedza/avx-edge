module "branch1" {
  source  = "terraform-aviatrix-modules/mc-edge/aviatrix"
  version = "1.1.1"

  site_id = "branch1"
  ztp_file_download_path = "${path.cwd}"
  edge_gws = {
    gw1 = {
      gw_name                 = "gw1",
      lan_interface_ip_prefix = "10.50.10.10/24",
      wan_default_gateway_ip  = "1.1.1.1"
      wan_interface_ip_prefix = "1.1.1.10/24"
      ztp_file_download_path = "${path.module}"
      transit_gws = {
        transit1 = {
          name = "transit1",
          #attached = true
        },
      }
    }
  }
}
output "path" {
  value =  "${path.cwd}/gw1-branch1.iso"
}

resource "aws_s3_object" "cfg_upload" {
  bucket = "aviatrixnow"
  key    = "gw1-branch1.iso"
  source = "${path.cwd}/gw1-branch1.iso"
#  etag   = filemd5("${path.cwd}/gw1-branch1.iso")

  depends_on = [module.branch1]
}
