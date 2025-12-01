variable "project_id" {}
variable "vm_name" {}
variable "zone" { default = "us-central1-a" }
variable "service_account_email" {
  description = "The email of the IAM user to attach to this VM"
}