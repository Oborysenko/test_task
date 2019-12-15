variable "kops_cluster" {

}

variable "vpc" {}
variable "public_subnets" {}
variable "private_subnets" {}
variable "dhcp_options_domain_name_servers" {
  type    = string
  default = "8.8.8.8"
}
