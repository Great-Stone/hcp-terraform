provider "hcp" {
  client_id     = var.hcp_client_id
  client_secret = var.hcp_client_secret
}

resource "hcp_hvn" "gs" {
  hvn_id         = "hvn"
  cloud_provider = "aws"
  region         = "ap-southeast-1"
  cidr_block     = "172.25.16.0/20"
}

resource "hcp_consul_cluster" "gs" {
  count = var.consul_enable ? 1 : 0
  cluster_id      = "gs-hcp"
  hvn_id          = hcp_hvn.gs.hvn_id
  tier            = "standard"
  connect_enabled = true
  datacenter      = "gs-hcp"
  public_endpoint = true
  size            = "small"
}

resource "hcp_vault_cluster" "gs" {
  count = var.vault_enable ? 1 : 0
  cluster_id      = "gs-cluster"
  hvn_id          = hcp_hvn.gs.hvn_id
  public_endpoint = true
  tier            = "standard_small"
}

resource "hcp_vault_cluster_admin_token" "gs" {
  count = var.vault_enable ? 1 : 0
  cluster_id = hcp_vault_cluster.gs.0.cluster_id
}