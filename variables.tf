variable "project_id" {
  type        = string
  description = "ID of the TEST project"
  default     = "test-project-354808"
}

variable "region" {
  type        = string
  description = "Default region of project"
  default     = "us-west4"
}

variable "compute_zone" {
  type        = string
  description = "Zone for compute resources"
  default     = "us-west4-b"
}

variable "instance_name" {
  type        = string
  description = "Name of the test instance"
  default     = "test-01"

}
variable "machine_type" {
  type        = string
  description = "Machine type for instance"
  default     = "e2-medium"

}
