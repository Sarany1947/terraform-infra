

## Creating a service account here 
resource "google_service_account" "sa" {
  account_id   = var.sa_name
  display_name = "Managed by Terraform: ${var.sa_name}"
  project = var.project_id
} 


## Creating a new role in IAM with permission You pass in 
resource "google_project_iam_custom_role" "custom_role" {
  role_id     = var.role_id
  project     = var.project_id
  title       = "My Custom Role"
  description = "A description"
  permissions = var.permissions
  stage = "GA"
}

## service account has been created , ROle has been created and we are binding them now ok 
# 3. BINDING (Connect Identity to Role)
resource "google_project_iam_member" "bind_user" {
  project = var.project_id
  role    = google_project_iam_custom_role.custom_role.id
  member  = "serviceAccount:${google_service_account.sa.email}"
}