variable "gcp_project" {}

provider "google" {
  project = "qwiklabs-gcp-00-5d17ee69ad6e" 
  region  = "us-west1"
}

terraform {
  backend "gcs" {
    bucket  = "tf-remote-state-student_04_7e3e893ce338-12974-17243"
    prefix  = "terraform/state/lab01" 
  }
}

resource "google_compute_network" "example_vpc" {
  name                    = "example-vpc"
  auto_create_subnetworks = true 
