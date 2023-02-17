data "aws_ami" "latest_amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "webserver_demo" {
  ami           = data.aws_ami.latest_amazon_linux.id
  instance_type = "t3.micro"
  key_name      = "main"

  vpc_security_group_ids = [aws_security_group.webservers.id]

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }

  user_data = file("scripts/userdata.sh")

  tags = {
    Name = "webserver-demo"
  }
}
