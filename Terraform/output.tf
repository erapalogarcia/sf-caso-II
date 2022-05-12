#ratreo de lo que esta sucediendo
output "name" {
  value= google_container_cluster.default.name
}
output "id" {
  value= google_container_cluster.default.id
}

output "project" {
  value= google_container_cluster.default.project
}

output "location" {
  value= google_container_cluster.default.location
}

output "description" {
  value= google_container_cluster.default.description
}


output "name-name" {
  value= google_container_node_pool.default.name
}

output "name-id" {
  value= google_container_node_pool.default.id
}

output "name-project" {
  value= google_container_node_pool.default.project
}


output "name-max_pods_per_node" {
  value= google_container_node_pool.default.max_pods_per_node
}