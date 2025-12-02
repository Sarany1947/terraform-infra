terraform {
  backend "gcs" {
    bucket  = "sai-temp-001" # <--- YOUR BUCKET NAME
    prefix  = "terraform/state/dev/20-compute"  # Different folder!
  }
}