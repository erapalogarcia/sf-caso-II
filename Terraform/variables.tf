#nombre del cluster
variable "name" {
    default = "gke-demo-dev"
}

#nombre del proyecto
variable "project" {
  default = "stefanini-proyecto"
}

variable "name_pool" {
  default="gke-pool"
}

variable "location" {
  default="us-central1-a"
}

variable "initial_node_count" {
   default= 1
}

variable "machine_type" {
  default = "e2-micro"
}