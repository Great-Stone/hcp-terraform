variable "hcp_client_id" {}
variable "hcp_client_secret" {}

variable "vault_enable" {
  default = false
}

variable "consul_enable" {
  default = false
}

variable "consul_tier" {
  description = "development, standard, plus"
  default = "development"
}

variable "consul_size" {
  description = "x_small, small, medium, large"
  default = "x_small"
}

variable "vault_tier" {
  description = "dev, standard_small, standard_medium, standard_large, starter_small"
  default = "dev"
}