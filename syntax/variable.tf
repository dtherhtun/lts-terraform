vairable "total_peoples" {
	type = list(string)
	default = ["mg mg", "aung aung", "mi aye"]
}

variable "num_of_someting" {
	type = list(number)
	default = [ 2, 4, 0, 5, 99 ]
}

variable "map_example" {
	type = map
	default = { "us-east-1" = "ami-34141213", "us-west-2" = "ami-2341421", "asia-region" = "ami-123124" }
}


variable "map_list_example" {
	type = map(list(number))
	default = { "mg mg" = [23, 56, 67, 24], "aung aung" = [ 56, 87, 09]}
}

variable "instance" {
	type = object({
	name = string
  size = string
  num_of_cpu = number
  num_of_nc = number
  num_of_disk = number
  disk_size = list(number)
  })
}

instance = { name = "web", size = "t2.micro", num_of_cpu = 4, num_of_disk = 2, disk_size = [50, 100] }







variable "ami_id" {
	type = string
	default = "ami-24141423124"
	description = "ami image id for ec2 instnace"
}

variable "vm_size" {
	type = string
	default = "t2.micro"
	description = "Instance size of aws ec2 instance"
}


resource "aws_instance" "web" {
	ami = var.ami_id 
	instance_type = var.vm_size
}
