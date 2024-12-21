variable "component" {
  default = "elasticache"
}
variable "env" {}
variable "server_app_port_sg_cidr" {}
variable "vpc_id" {}

variable "subnet_ids" {}
variable "family" {}

variable "node_type" {}
variable "engine_version" {}