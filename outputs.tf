output "ami" {
  value = data.aws_ami.ubuntu
  description = "The AWS AMI resource"
}
