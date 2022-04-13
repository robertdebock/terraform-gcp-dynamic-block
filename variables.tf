variable "allow" {
  description = "Ports and protocols to allow."
  default = [
    {
      ports    = ["53"]
      protocol = "tcp"
    },
    {
      ports    = ["53"]
      protocol = "udp"
    }
  ]
  type = list(object({
    ports    = list(string)
    protocol = string
  }))
}
