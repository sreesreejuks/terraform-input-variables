# Define an EC2 instance resource
resource "aws_instance" "aws_instance" {

  # Set the AMI ID for the instance (provided via variable)
  ami = var.ami

  # Set the instance type (provided via variable)
  instance_type = var.aws_instance

  # Add tags to the instance for identification
  tags = {
    Name        = "Tf_EC2_instance"      # Name tag for the instance
    Description = "Managed by Terraform" # Description tag indicating it's Terraform-managed
  }
}
