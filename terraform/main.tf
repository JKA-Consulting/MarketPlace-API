provider "google" {
  alias=  "testproject"
  project   = "themarketplacetest"

}

provider "google" {
  alias=  "devproject"
  project   = "themarketplacedev"

}

provider "google" {
  alias=  "prodproject"
  project   = "themarketplaceprod"

}


resource "google_project_service" "compute" {
  provider=google.testproject
  project = "themarketplacetest"
  service = "compute.googleapis.com"
}

resource "google_project_service" "gke" {
  provider=google.testproject
  project = "themarketplacetest"
  service = "container.googleapis.com"  
}
resource "google_project_service" "compute" {
  provider=google.devproject
  project = "themarketplacedev"
  service = "compute.googleapis.com"
}

resource "google_project_service" "gke" {
  provider=google.devproject
  project = "themarketplacedev"
  service = "container.googleapis.com"  
}

resource "google_project_service" "compute" {
  provider=google.prodproject
  project = "themarketplaceprod"
  service = "compute.googleapis.com"
}

resource "google_project_service" "gke" {
  provider=google.prodproject
  project = "themarketplaceprod"
  service = "container.googleapis.com"  
}