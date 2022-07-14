resource "google_compute_disk" "default" {
  name  = "recovereddisk"
  type  = "pd-ssd"
  zone  = var.compute_zone
  snapshot = "compute/snapshotsDetail/projects/test-project-354808/global/snapshots/bootsnapshot"
  labels = {
    recoveredbbotdisk ="yes"
  }
}

resource "google_compute_instance" "recovered1" {
  name         = "recoveredvm"
  machine_type = var.machine_type
  zone         = var.compute_zone
  boot_disk {
      source = "recovereddisk" 
  }
   network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
