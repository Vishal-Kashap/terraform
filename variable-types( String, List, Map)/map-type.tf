

variable "example_map" {
  description = "An example map variable"
  type        = map(string)
  default = {
    key1 = "value1"
    key2 = "value2"
    key3 = "value3"
  }
}

#Accessing all values of map

output "example_map_output" {
  value = var.example_map
}

#Accessing Individual elements of map

output "example_map_value_for_key1" {
  value = var.example_map["key1"]
}