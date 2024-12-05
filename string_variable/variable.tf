# String Variable for Amazon Machine Image (AMI)
# This variable is of type "string", which stores text values. 
# It specifies the Amazon Machine Image (AMI) ID to be used for launching EC2 instances.
# AMI is essential as it defines the operating system and software stack for the instance.
# Default value points to a specific AMI. Users can replace it with a custom AMI ID.
variable "ami" {
  description = "The AMI ID to use for launching the EC2 instance(s)"
  type        = string
  default     = "ami-0453ec754f44f9a4a"
}

# String Variable for EC2 Instance Type
# This is another "string" variable to define the instance type of the EC2 resource.
# The instance type determines the hardware configuration (e.g., CPU, memory, network performance).
# Default value is "t2.micro", commonly used for small workloads or learning purposes.
variable "aws_instance" {
  description = "The type of EC2 instance (e.g., t2.micro, t2.large)"
  type        = string
  default     = "t2.micro"
}


