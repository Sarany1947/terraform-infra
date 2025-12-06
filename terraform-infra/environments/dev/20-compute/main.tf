module "intern_vm" {
  source = "../../../modules/compute"

  project_id = "endtoend-devops" # <--- YOUR PROJECT ID
  vm_name    = "intern-workstation-vm"
  zone       = "us-central1-a"

  # PASTE THE EMAIL FROM STEP 00-IAM HERE
  # This connects Layer 1 (IAM) to Layer 2 (Compute)
  /* service_account_email = "saitemp@endtoend-devops.iam.gserviceaccount.com" */
}