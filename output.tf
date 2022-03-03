output "consul_public" {
  value = "${var.consul_enable ? hcp_consul_cluster.gs.0.consul_public_endpoint_url : 0}"
}

output "consul_root_token" {
  value = "${var.consul_enable ? nonsensitive(hcp_consul_cluster.gs.0.consul_root_token_secret_id) : 0}"
}

output "vault_public" {
  value = "${var.vault_enable ? hcp_vault_cluster.gs.0.vault_public_endpoint_url : 0}"
}

output "vault_root_token" {
  value = "${var.vault_enable ? nonsensitive(hcp_vault_cluster_admin_token.gs.0.token) : 0}"
}