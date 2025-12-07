terraform {
  backend "gcs" {
    bucket = "endtodend-devops-tfstate"
    prefix = "dev/30-gke"
  }
}
