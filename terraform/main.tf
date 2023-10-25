provider "google" {
  project   = "themarketplacetest"
  region    = "europe-west2" #london-uk
}

resource "google_project_service" "compute" {
  project = "themarketplacetest"
  service = "compute.googleapis.com"
}

resource "google_project_service" "gke" {
  project = "themarketplacetest"
  service = "container.googleapis.com"  
}

