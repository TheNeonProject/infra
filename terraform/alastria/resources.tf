resource "aws_security_group" "ssh" {
  name        = "default-ssh-alastria"
  description = "Security group for nat instances that allows SSH and VPN traffic from internet"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "alastria-node-ports" {
  name        = "default-alastria-ports"
  description = "Security group to connect and syc Alastria nodes"

  ingress {
    from_port   = 21000
    to_port     = 21000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 21000
    to_port     = 21000
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
