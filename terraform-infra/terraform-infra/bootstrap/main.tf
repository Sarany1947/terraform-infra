terraform {
  required_version = ">= 1.2.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "endtoend-devops"
  region  = "us-central1"
}

resource "google_storage_bucket" "tfstate" {
  name          = "endtodend-devops-tfstate"
  location      = "US-CENTRAL1"
  force_destroy = false
}
