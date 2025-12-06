terraform {
  backend "gcs" {
    bucket = "endtodend-devops-tfstate"
    prefix = "dev/20-gke"
  }
}
