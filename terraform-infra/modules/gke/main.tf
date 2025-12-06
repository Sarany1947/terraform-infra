resource "google_container_cluster" "gke_cluster" {
  name     = var.cluster_name
  location = var.zone

  project = var.project_id

  remove_default_node_pool = true
  initial_node_count       = 1

  networking_mode = "VPC_NATIVE"
  ip_allocation_policy {}
}

resource "google_container_node_pool" "gke_nodes" {
  name     = "default-node-pool"
  project  = var.project_id
  cluster  = google_container_cluster.gke_cluster.name
  location = var.zone

  node_count = var.node_count

  node_config {
    machine_type = var.machine_type
    disk_size_gb = 100
    oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
}
