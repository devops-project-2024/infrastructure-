resource "aws_instance" "docker" {
  ami                         = var.ubuntu_ami
  # key_name                    = module.key_pair.key_name  # Reference the key name from the module
  key_name = var.key_name
  instance_type               = var.instance_type
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.docker_sg]
  subnet_id                   = var.subnets[0]
  availability_zone           = data.aws_availability_zones.available.names[0]
   user_data = filebase64("./userdata/install-docker.sh")
  
  tags = {
    Name = var.instance_name
  }
}