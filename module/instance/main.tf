resource "aws_instance" "Tailor-Server" {
  count          = var.instance_count  // Control the number of instances with a variable

  ami            = var.ami_id
  instance_type  = var.instance_type
  subnet_id      = var.subnet_id
  key_name       = var.key_name
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = format("Tailor-Server%02d", count.index + 1)  // Naming instances with a sequential number
  }

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 30
    delete_on_termination = true
  }
}




