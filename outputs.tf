output "ami" {
  value       = data.aws_ami.ubuntu
  description = "The AWS AMI resource"
}

output "ami_id" {
  value       = data.aws_ami.ubuntu.image_id
  description = "AMI ID"
}
