
terraform {
  backend "gcs" {
    bucket  = "endtodend-devops-tfstate" # <--- YOUR BUCKET NAME
    prefix  = "terraform/state/dev/20-compute"  # Different folder!
  }
}
