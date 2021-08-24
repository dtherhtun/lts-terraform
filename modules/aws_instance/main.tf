data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = var.pub_key
}

resource "aws_instance" "web" {
  count         = var.is_create_ec2 ? var.num_of_ec2 : 0
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.size
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    Name = format("web-%d", count.index + 1)
  }
}
