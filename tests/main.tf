
module "test" {
  source         = "../"
  ubuntu_version = "24.04"
  volume_type    = "ebs-gp3"
}
