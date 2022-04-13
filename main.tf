resource "google_compute_network" "default" {
  name = "my-network"
}

resource "google_compute_firewall" "default" {
  name    = "my-firewall"
  network = google_compute_network.default.name
  dynamic "allow" {
    for_each = var.allow
    content {
      protocol = allow.value.protocol
      ports    = allow.value.ports
    }
  }
  source_ranges = ["0.0.0.0/0"]
}
