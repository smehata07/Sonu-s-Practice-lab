provider "google" {
  project     = var.project_id
  credentials = file("C:/Terraform/test-project-354808-e842dde0d891.json")
  region      = var.region
}





