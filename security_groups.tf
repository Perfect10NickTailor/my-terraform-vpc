resource "aws_security_group" "newcpanel" {
  name        = "newcpanel"
  description = "Allow inbound traffic"
  vpc_id      = aws_vpc.vpc2.id

  // POP3 TCP 110
  ingress {
    from_port   = 110
    to_port     = 110
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Custom TCP 20
  ingress {
    from_port   = 20
    to_port     = 20
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Custom TCP 587
  ingress {
    from_port   = 587
    to_port     = 587
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // DNS (TCP) TCP 53
  ingress {
    from_port   = 53
    to_port     = 53
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // SMTPS TCP 465
  ingress {
    from_port   = 465
    to_port     = 465
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // HTTPS TCP 443
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // DNS (UDP) UDP 53
  ingress {
    from_port   = 53
    to_port     = 53
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // IMAP TCP 143
  ingress {
    from_port   = 143
    to_port     = 143
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // IMAPS TCP 993
  ingress {
    from_port   = 993
    to_port     = 993
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Custom TCP 21
  ingress {
    from_port   = 21
    to_port     = 21
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Custom TCP 2086
  ingress {
    from_port   = 2086
    to_port     = 2086
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Custom TCP 2096
  ingress {
    from_port   = 2096
    to_port     = 2096
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // HTTP TCP 80
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // SSH TCP 22
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // POP3S TCP 995
  ingress {
    from_port   = 995
    to_port     = 995
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Custom TCP 2083
  ingress {
    from_port   = 2083
    to_port     = 2083
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Custom TCP 2087
  ingress {
    from_port   = 2087
    to_port     = 2087
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Custom TCP 2095
  ingress {
    from_port   = 2095
    to_port     = 2095
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Custom TCP 2082
  ingress {
    from_port   = 2082
    to_port     = 2082
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
output "newcpanel_sg_id" {
  value       = aws_security_group.newcpanel.id
  description = "The ID of the security group 'newcpanel'"
}
