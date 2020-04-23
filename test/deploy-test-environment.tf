provider "aws" {
    profile = "default"
    region  = "us-east-1"
}

data "aws_ami" "rpg-utilities-test-image" {
    most_recent = true
    owners = ["self"]
    filter {
      name   = "name"
      values = ["rpg-utilities-test-image-*"]
    }
}

resource "aws_instance" "rpg-utilities-test" {
    instance_type = "t2.nano"
    ami           = "data.aws_ami.rpg-utilities-test-image.id"
}
