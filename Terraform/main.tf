#crear 1 cluster con 1 node pool y dentro del node pool un host en cada 
#datacenter


provider "google" {
  credentials = file("./effective-relic-347418-6863d39ded2a.json")
  project     = "effective-relic-347418"
  region      = "us-central1-a"
}
#default es el nombre del cluster

resource "google_container_cluster" "default" {
  name     = var.name
  project = var.project
  description = "Cluster Caso II Dev"
  location = var.location

  #configuracion de roles a nivel de Kluster
  enable_legacy_abac = true
  #se debe dejar 1 al menos
  remove_default_node_pool = true
  initial_node_count       = var.initial_node_count

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }  
  }

  
}

#este contiene la cantidad de host que se necesita
resource "google_container_node_pool" "default" {
  name       = var.name_pool
  location   = var.location
  cluster    = google_container_cluster.default.name
  node_count = var.initial_node_count
  project = var.project

  node_config {
    preemptible  = true
    machine_type = var.machine_type

    metadata = {
      disabled-enable_legacy_abac="true"
    }

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    #service_account = "k8-service-acount@effective-relic-347418.iam.gserviceaccount.com"
    oauth_scopes = [
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring"

        ]
  }
}