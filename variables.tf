variable "aws_region" {
  description = "Preferred region in which to launch EC2 instances. Defaults to us-east-1"
  type        = string
  default     = "us-east-1"
}

variable "nameprefix" {
  description = "Prefix to use for some resource names to avoid duplicates"
  type        = string
  default     = "Cloud-Example"
}

variable "name_tag" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "Cloud-Example-Terraform"
}

variable "project_tag" {
  description = "Value of the Project tag for the EC2 instance"
  type        = string
  default     = "Cloud-Example"
} 

variable "availability_zone" {
  description = "Availability zone to use"
  type        = string
  default     = "us-east-1a"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type = string
  #default = "c5n.18xlarge"
  default = "t3.medium"
}

variable "use_efa" {
  description = "Attach EFA Network"
  type = bool
  default = "true"
}

variable "key_name" {
  description = "The name of the key-pair used to access the EC2 instances"
  type        = string
  #default     = "terraform-key.pem"
}

variable "container_name" {
  description = "The name of the conatinerized model to run"
  type        = string
  default     = "zwills/dmod_ngen_slim"
}


variable "ngen_catchment_file" {
  description = "The path of the catchment file; examples in the ngen repo"
  type        = string
  #default     = "/mnt/ngen/ngen/data/catchment_data.geojson"
}

variable "ngen_nexus_file" {
  description = "The path of the nexus file; examples in the ngen repo"
  type        = string
  #default     = "/mnt/ngen/ngen/data/nexus_data.geojson"
}

variable "ngen_realization_file" {
  description = "The path of the ngen realization file; examples in the ngen repo"
  type        = string
  #default     = "/mnt/ngen/ngen/data/test_bmi_multi_realization_config.json"
}

variable "allowed_ssh_cidr" {
  description = "Public IP address/range allowed for SSH access"
  type = string
}

variable "bucket_name" {
  description = "Bucket Name for AWS bucket to mount for data"
  type = string
}

variable "public_key" {
  description = "Contents of the SSH public key to be used for authentication"
  type        = string
}

variable "managed_policies" {
  description = "The attached IAM policies granting machine permissions"
  default = ["arn:aws:iam::aws:policy/AmazonEC2FullAccess",
             "arn:aws:iam::aws:policy/AmazonS3FullAccess",
             "arn:aws:iam::aws:policy/AmazonFSxFullAccess"]
}

variable "ami_id" {
  description = "The random ID used for AMI creation"
  type = string
  default="unknown value"
}
