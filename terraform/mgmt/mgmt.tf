# Variable passthrough to the GCP module in order
# to enable TF_VAR_xxx environment variable usage.
variable "network" {
  type = string
  description = "The VPC network created to host the cluster in"
  default     = "plural-core"
}

variable "subnetwork" {
  type = string
  description = "The subnetwork created to host the cluster in"
  default     = "plural-core"
}

module "mgmt" {
    source        = "./cluster"
    project_id    = "vclustersample"
    cluster_name  = "ennui"
    region        = "us-east1"
    create_db     = false
    network       = "${var.network}"
    subnetwork    = "${var.subnetwork}"
}
