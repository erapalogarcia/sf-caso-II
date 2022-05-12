#ratreo de lo que esta sucediendo
output "name" {
  value= google_container_cluster.primary.name
}
output "id" {
  value= google_container_cluster.primary.id
}

output "project" {
  value= google_container_cluster.primary.project
}

output "location" {
  value= google_container_cluster.primary.location
}

output "description" {
  value= google_container_cluster.primary.description
}


output "name-name" {
  value= google_container_node_pool.primary.name
}

output "name-id" {
  value= google_container_node_pool.primary.id
}

output "name-project" {
  value= google_container_node_pool.primary.project
}


output "name-max_pods_per_node" {
  value= google_container_node_pool.primary.max_pods_per_node
}