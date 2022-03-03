variable "hcp_client_id" {}
variable "hcp_client_secret" {}

variable "vault_enable" {
  default = false
}

variable "consul_enable" {
  default = false
}

variable "consul_size" {
  description = "development, standard, plus"
  default = "development"
}

variable "vault_size" {
  description = "dev, standard_small, standard_medium, standard_large, starter_small"
  default = "dev"
}