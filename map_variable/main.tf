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
  
  # Tags to help identify the EC2 instance
  # Using the "project_environment" variable to set project and environment-related tags
  tags = var.project_environment
}

# Create multiple IAM users
resource "aws_iam_user" "aws_iam_user" {
  # Define the number of users to create based on the length of the "user_names" variable
  count = length(var.user_names)

  # Set the name of each IAM user dynamically from the "user_names" variable
  name = var.user_names[count.index]
}

