module "ubuntu_24_04_latest" {
  source = "github.com/andreswebs/terraform-aws-ami-ubuntu"
}

locals {
  ami_id = module.ami_ubuntu_24_04_latest.ami.image_id
}

## --> use `local.ami_id
