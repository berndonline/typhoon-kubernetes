module "aws-cluster" {
  source = "git::https://github.com/poseidon/typhoon//aws/container-linux/kubernetes?ref=v1.13.3"

  providers = {
    aws = "aws.default"
    local = "local.default"
    null = "null.default"
    template = "template.default"
    tls = "tls.default"
  }

  # AWS
  cluster_name = "typhoon"
  dns_zone     = "${var.dns}"
  dns_zone_id  = "${var.dns_id}"

  # configuration
  ssh_authorized_key = "${var.ssh_key}"
  asset_dir          = "./.secrets/clusters/typhoon"

  # optional
  worker_count = 2
  worker_type  = "t3.small"
}
