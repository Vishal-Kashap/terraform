variable "example_string" {
  description = "An example string variable"
  type        = string
  default     = "Hello, Terraform!"
}

output "example_string_output" {
  value = var.example_string
}
