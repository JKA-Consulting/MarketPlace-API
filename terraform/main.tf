provider "google" {
  project   = "themarketplacetest"
}

resource "google_project_service" "compute" {
  project = "themarketplacetest"
  service = "compute.googleapis.com"
}

resource "google_project_service" "gke" {
  project = "themarketplacetest"
  service = "container.googleapis.com"  
}

