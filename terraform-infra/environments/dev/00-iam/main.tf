module "team_intern" {
    source = "../../../modules/iam" 

    project_id = "endtoend-devops" 
    role_id = "InternReadRole"
    sa_name = "saitemp"

  permissions = [
    "storage.buckets.list",
    "storage.buckets.get",
    "compute.instances.list",
  ]


}

output "intern_email" {
  value = module.team_intern.sa_email
}