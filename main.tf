variable "workload_identity_pool_id" {
  type = string
  default = "my-workload-identity-pool"
}

variable "workload_identity_display_name" {
  type = string
  default = "my-wip-display-name"
}

variable "workload_identity_description" {
  type = string
  default = "my wifffffff"
}

variable "workload_identity_disabled" {
  type = bool
  default = false
}

resource "google_iam_workload_identity_pool" "myywif" {
  workload_identity_pool_id = var.workload_identity_pool_id
  display_name              = var.workload_identity_display_name
  description               = var.workload_identity_description
  disabled                  = var.workload_identity_disabled
}


