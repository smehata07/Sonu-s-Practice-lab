resource "google_compute_snapshot" "snapshot" {
  name        = "bootsnapshot"
  source_disk = var.instance_name        //Name of the VM for which snapshot is required 
  zone        = var.compute_zone
 
  storage_locations = ["us-west4"]
}

resource "google_compute_snapshot" "snapshot1" {
  name        = "attacheddisk"
  source_disk = "compute/disksDetail/zones/us-west4-b/disks/disk1"       //Name of the VM for which snapshot is required 
  zone        = var.compute_zone
 
  storage_locations = ["us-west4"]
}
