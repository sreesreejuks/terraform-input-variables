# Define an EC2 instance resource
resource "aws_instance" "aws_instance" {

  # Specify the AMI ID for the EC2 instance, passed from the "ami" variable
  ami = var.ami

  # Specify the instance type, passed from the "aws_instance" variable
  instance_type = var.aws_instance

  # Define the number of EC2 instances to launch, based on the "instance_count" variable
  count = var.instance_count

  # Enable or disable public IP for the instance, based on the "enable_public_ip" variable
  associate_public_ip_address = var.enable_public_ip
  
  # Add metadata tags to the EC2 instance for easier identification
  tags = {
    Name        = "Tf_EC2_instance"      # Name of the EC2 instance
    Description = "Managed by Terraform" # Indicates that the instance is managed by Terraform
  }
}
