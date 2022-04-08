resource "aws_key_pair" "myEnvKey" {

  key_name = "myEnvironment-key"
  public_key = file("~/Desktop/MBA/Virtualization and Data Storage/terraform_Scripts/myEnvironment-key.pub")

}