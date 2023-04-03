resource "google_compute_instance" "dareit-vm-ci" {
  name         = "dareit-vm-tf-ci"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["dareit"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        managed_by_terraform = "true"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  resource "google_storage_bucket" "kubelek" {
 project       = "potent-bloom-377613"
 name          = "kubelek_calkiem_nowy"
 location      = "US"
 storage_class = "STANDARD"

uniform_bucket_level_access = false

}
}