module "team_storage" {
    source = "../../../modules/storage" 
    project_id = "endtoend-devops" 
    bucket_name = "intern-storage-standard-sai-001"
    location = "US"
    storage_class = "STANDARD"

}