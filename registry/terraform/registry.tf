provider "digitalocean" {
}

# Create a docker registry
resource "digitalocean_droplet" "registry" {
  image = ""
  name = "registry"
  region = "sfo1"
  size = "512mb"
  ssh_keys = ["971320"]
}

resource "digitalocean_record" "registry" {
  domain = "rococo.io"
  type = "A"
  name = "@"
  value = "${digitalocean_droplet.registry.ipv4_address}"
}
