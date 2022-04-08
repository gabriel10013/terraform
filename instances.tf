resource "aws_instance" "instances" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    key_name = aws_key_pair.myEnvKey.key_name
    security_groups = ["allow_sshtoec2_myip"]
}