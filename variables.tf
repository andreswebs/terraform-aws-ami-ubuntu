variable "ami_slug" {
  type        = string
  description = "Slug to search"
  default     = "ubuntu-focal-20.04"
}

variable "arch" {
  type        = string
  description = "Processor architecture"
  default     = "amd64"
}

variable "most_recent" {
  type        = bool
  description = "Use the most recent?"
  default     = true
}

variable "owners" {
  type        = list(string)
  description = "List of AMI owner AWS account IDs to search"
  default     = ["099720109477"]
}
