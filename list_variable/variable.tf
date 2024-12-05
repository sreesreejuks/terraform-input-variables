# Variable to specify the Amazon Machine Image (AMI) ID
# Type: String - Defines the operating system and software for EC2 instances
variable "ami" {
  description = "The AMI ID to use for launching the EC2 instance(s)"
  type        = string
  default     = "ami-0453ec754f44f9a4a" # Default AMI ID
}

# Variable to specify the EC2 instance type
# Type: String - Determines hardware configuration (CPU, memory, etc.)
variable "aws_instance" {
  description = "The type of EC2 instance (e.g., t2.micro, t2.large)"
  type        = string
  default     = "t2.micro" # Default instance type
}

# Variable to specify the number of EC2 instances to create
# Type: Number - Allows scaling by changing the count
variable "instance_count" {
  description = "The number of EC2 instances to create"
  type        = number
  default     = 1 # Default instance count
}

# Variable to enable or disable public IP assignment
# Type: Boolean - Enables (true) or disables (false) public IP
variable "enable_public_ip" {
  description = "Enable public IP address for the instances"
  type        = bool
  default     = true # Default is to enable public IP
}

# Variable to define IAM usernames
# Type: List of Strings - A list of usernames to be created for IAM users
variable "user_names" {
  description = "IAM usernames"
  type        = list(string)
  default     = ["user1", "user2", "user3"] # Default list of IAM usernames
}