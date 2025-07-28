variable "project" {
    type = string
    default = "project"
}

resource "aws_instance" "name" {
    tags = {
      Name = "${var.project}"
    }
}

variable "message" {
  type = string
  default = "Hello, World!"
}

variable "text" {
  type = string
  default = "Hello, World!"
}