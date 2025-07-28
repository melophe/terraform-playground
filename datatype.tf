# primitive type
variable "message" {
  type    = string
  default = "Hello, World!" 
}

variable "number" {
  type = number
  default = 20
}

variable "aws_enable" {
  type = bool
  default = true
}
# object type
variable "object_example" {
  type = object ({
    name = string
    age = number
  })
  default = {
    name ="John Doe"
    age = 30
  }
}

output "username" {
  value = var.object_example.name
}

# tuple type
variable "tuple_example" {
   type = tuple([string, number, bool]) 
   default = [ "max", 10, false ]
}

output "first_value" {
  value = var.tuple_example[0]
}

output "second_value" {
  value = var.tuple_example[1]
}

# list type
variable "list_example" {
    type = list(string)
    default = ["apple", "banana", "cherry"]
}

output "first_item" {
  value = var.list_example[0]
}

output "all_items" {
  value = var.list_example
}

# map type
variable "map_example" {
  type = map(string)
  default = {
    High = "t3.large"
    Mid = "t3.medium" 
    Low = "t3.small"
  }
}

resource "aws_instance" "web" {
    instance_type = var.map_example["High"]
    ami = "ami-123"
}

# set type
variable "set_example" {
  type = set(string)
  default = ["apple", "banana", "cherry", "apple"] # 'apple' will be deduplicated
}

output "fruits" {
  value = var.set_example
}