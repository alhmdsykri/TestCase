    variable "do_token" {
  description = "DigitalOcean API Token"
}

variable "ssh_key_id" {
  description = "DigitalOcean SSH Key ID"
}

variable "droplet_name" {
  description = "Name for the Droplet"
  default     = "olintes-droplet"
}

variable "region" {
  description = "DigitalOcean region for the Droplet"
  default     = "nyc3"
}

variable "droplet_size" {
  description = "DigitalOcean Droplet size"
  default     = "s-1vcpu-1gb"
}

variable "droplet_image" {
  description = "DigitalOcean Droplet image"
  default     = "ubuntu-20-04-x64"
}

variable "firewall_name" {
  description = "Name for the Firewall"
  default     = "olintes-firewall"
}

variable "allowed_inbound_ports" {
  description = "List of allowed inbound ports for the Firewall"
  type        = list(number)
  default     = [8080, 22] # Allow port 8080 for olintes app and port 22 for SSH
}

variable "allowed_outbound_ports" {
  description = "List of allowed outbound ports for the Firewall"
  type        = list(number)
  default     = [0, 65535] # Allow all outbound ports
}

variable "allowed_icmp" {
  description = "Enable or disable ICMP traffic"
  type        = bool
  default     = true # Enable ICMP traffic
}
