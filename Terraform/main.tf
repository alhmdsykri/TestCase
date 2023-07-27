provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "olintes_droplet" {
  name   = var.droplet_name
  region = var.region
  size   = var.droplet_size
  image  = var.droplet_image

  tags = ["olintes"]

  ssh_keys = [var.ssh_key_id]
}

resource "digitalocean_firewall" "olintes_firewall" {
  name = var.firewall_name

  droplet_ids = [digitalocean_droplet.olintes_droplet.id]

  dynamic "inbound_rule" {
    for_each = var.allowed_inbound_ports
    content {
      protocol    = "tcp"
      port_range  = inbound_rule.value
      source_type = "0.0.0.0/0"
    }
  }

  dynamic "outbound_rule" {
    for_each = var.allowed_outbound_ports
    content {
      protocol    = "tcp"
      port_range  = outbound_rule.value
      destination = "0.0.0.0/0"
    }
  }

  dynamic "icmp_rule" {
    for_each = [var.allowed_icmp]
    content {
      protocol    = "icmp"
      source_type = "0.0.0.0/0"
    }
  }
}

output "public_ip" {
  value = digitalocean_droplet.olintes_droplet.ipv4_address
}
