variable "project-id" {
  description = "project id"
}

variable "gcp_service_list" {
  type        = list(string)
  description = "the list of APIs to be enabled for this project"
  default     = []
}