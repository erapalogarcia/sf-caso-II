#nombre del cluster
variable "name" {
    default = "gke-demo-dev"
}

#nombre del proyecto
variable "project" {
  default = "proyecto-caso"
}

variable "name_pool" {
  default="gke-pool1"
}

variable "location" {
  default="us-central1"
}

variable "initial_node_count" {
   default= 1
}

variable "machine_type" {
  default = "e2-micro"
}