################################################################################
# Variables used for deployment tag
################################################################################

variable "setup_name" {
  description = "setup name"
  default     = "redisconf21-demo-"
}

################################################################################
# Used Amazon Images
################################################################################

variable "instance_ami" {
  description = "AMI for aws EC2 instance - us-east-2	focal	20.04 LTS	arm64	hvm:ebs-ssd	20210325"
  default     = "ami-0d08090d8aaa341cd"
}

variable "grafana_ami" {
  description = "AMI for aws EC2 instance - us-east-2	Grafana 7.5.2-0"
  default     = "ami-06e64809872e814b0"
}


################################################################################
# Access keys
################################################################################
variable "private_key" {
  description = "private key"
  default     = "/tmp/redisconfdemo.pem"
}

variable "key_name" {
  description = "key name"
  default     = "perf-cto-us-east-2"
}

variable "region" {
  default = "us-east-2"
}


################################################################################
# Grafana instance related vars
################################################################################

variable "grafana_instance_type" {
  description = "type for AWS Grafana EC2 instance"
  default     = "t2.xlarge"
}

variable "grafana_ssh_user" {
  description = "grafana ssh user"
  default     = "ubuntu"
}

################################################################################
# DB instance related vars
################################################################################
variable "instance_device_name" {
  description = "EC2 instance device name"
  default     = "/dev/sda1"
}

variable "instance_volume_size" {
  description = "EC2 instance volume_size"
  default     = "1024"
}

variable "instance_volume_type" {
  description = "EC2 instance volume_type"
  default     = "io1"
}


variable "instance_volume_iops" {
  description = "EC2 instance volume_iops"
  default     = "3000"
}

variable "client_instance_volume_size" {
  description = "EC2 instance volume_size"
  default     = "256"
}

variable "client_instance_volume_type" {
  description = "EC2 instance volume_type"
  default     = "gp2"
}


variable "instance_volume_encrypted" {
  description = "EC2 instance instance_volume_encrypted"
  default     = "false"
}

variable "instance_root_block_device_encrypted" {
  description = "EC2 instance instance_root_block_device_encrypted"
  default     = "false"
}

variable "instance_cpu_threads_per_core" {
  description = "CPU threads per core for aws EC2 instance"
  default     = 1
}

variable "instance_cpu_threads_per_core_hyperthreading" {
  description = "CPU threads per core when hyperthreading is enabled for aws EC2 instance"
  default     = 2
}

variable "instance_network_interface_plus_count" {
  description = "number of additional network interfaces to add to aws EC2 instance"
  default     = 0
}

variable "os" {
  description = "os"
  default     = "ubuntu20.04"
}

variable "ssh_user" {
  description = "ssh_user"
  default     = "ubuntu"
}

################################################################################
# Specific DB machine variables
################################################################################
# m5d.8xlarge 	32 VCPUs 	128 GB MEM
variable "server_instance_type" {
  description = "type for aws EC2 instance"
  default     = "m5d.8xlarge"
}


variable "server_instance_count" {
  default = "1"
}

variable "server_instance_cpu_core_count" {
  description = "CPU core count for aws EC2 instance"
  default     = 16
}


################################################################################
# Specific Client machine variables
################################################################################
# m5.8xlarge 	32 VCPUs 	128 GB MEM

variable "client_instance_type" {
  description = "type for aws EC2 instance"
  default     = "m5.8xlarge"
}

variable "client_instance_count" {
  default = "1"
}


################################################################################
# Underlying network/security rules/settings
################################################################################


variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default     = "10.3.0.0/16"
}

variable "cidr_subnet" {
  description = "CIDR block for the subnet"
  default     = "10.3.0.0/24"
}

variable "cidr_subnet_2b" {
  description = "CIDR block for the subnet"
  default     = "10.3.1.0/24"
}

variable "cidr_subnet_2c" {
  description = "CIDR block for the subnet"
  default     = "10.3.2.0/24"
}

variable "availability_zone" {
  description = "availability zone to create subnet"
  default     = "us-east-2a"
}

variable "availability_zone_2b" {
  description = "availability zone to create subnet"
  default     = "us-east-2b"
}
variable "availability_zone_2c" {
  description = "availability zone to create subnet"
  default     = "us-east-2c"
}

variable "placement_group_name" {
  description = "placement group name"
  default     = "redisconf21-demo-pg"
}

variable "placement_group_name_us_east_2b" {
  description = "placement group name"
  default     = "redisconf21-demo-pg-us-east-2b"
}

variable "placement_group_name_us_east_2c" {
  description = "placement group name"
  default     = "redisconf21-demo-pg-us-east-2c"
}


