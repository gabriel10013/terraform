data "http" "myip" {
    url = "http://ipv4.icanhazip.com"
}

resource "aws_security_group" "allow_ssh_myip" {
    name = "allow_sshtoec2_myip"
    description = "Allow SSH only from your IP"
    
    ingress{
        description = "SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["${chomp(data.http.myip.body)}/32"]
    }

    egress{
      cidr_blocks = [ "0.0.0.0/0" ]
      description = "EgressAll"
      from_port = 0
      protocol = -1
      to_port = 0
    } 
}