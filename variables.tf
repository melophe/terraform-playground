variable "project" {
    type = string
    default = "project"
}

resource "aws_instance" "name" {
    tags = {
      Name = "${var.project}"
    }
}