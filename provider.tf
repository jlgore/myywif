terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.70.0"
    }
  }
}

variable "gcp_project_name" { 
  type = string
}

variable "gcp_region" {
  type = string
}

variable "gcp_zone" {
  type = string
}

provider "google" {
  # Configuration options
  project = var.gcp_project_name
  region = var.gcp_region
  zone = var.gcp_zone
}
