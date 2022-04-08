terraform {
  backend "s3" {
      bucket = "s3terraformbackgabriellira"
      key = "s3learningterraform"
      region = "us-east-1"
      profile = "terraform"
  }
}