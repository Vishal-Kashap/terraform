

variable "example_list" {
  description = "An example list variable"
  type        = list(string)
  default     = ["item1", "item2", "item3"]
}

#Accessing all elements of list

output "example_list_output" {
  value = var.example_list
}

#Accessing Individual Elements of List

output "example_list_first_item" {
  value = var.example_list[0]
}