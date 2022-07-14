resource "google_compute_instance" "test" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.compute_zone
  labels = {
    staterefresh = "yes"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

}

resource "google_compute_disk" "persistent" {

  name = "disk1"

  size = 20

  type = "pd-ssd"

  zone = var.compute_zone

}



resource "google_compute_attached_disk" "default" {

  disk = google_compute_disk.persistent.id

  instance = google_compute_instance.test.id

}
