module "gke_cluster" {
  source       = "../../../modules/gke"
  project_id   = "endtoend-devops"
  cluster_name = "dev-gke"
  zone         = "us-central1-a"
  node_count   = 2
  machine_type = "e2-standard-4"
}
