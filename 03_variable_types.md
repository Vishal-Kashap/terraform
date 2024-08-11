
# Terraform Variables Types

This document provides examples of different Terraform variable types and how to use them. The types covered include `string`, `list`, and `map`.

## Variable Types

- **String**: A single value, typically used for text.
- **List**: An ordered collection of values, all of the same type.
- **Map**: An unordered collection of key-value pairs, where the keys are unique and of type `string`, and the values can be of any type.

## String Type

### Definition

A `string` is a basic type used to represent text. It holds a single value and is often used for names, identifiers, or other textual data.

### Variable Definition

```hcl
variable "example_string" {
  description = "An example string variable"
  type        = string
  default     = "Hello, Terraform!"
}
```

### Output Example

```hcl
output "example_string_output" {
  value = var.example_string
}
```

## List Type

### Definition

A `list` is an ordered collection of values. All elements in a list must be of the same type. Lists are useful for storing multiple items in a specific order.

### Variable Definition

```hcl
variable "example_list" {
  description = "An example list variable"
  type        = list(string)
  default     = ["item1", "item2", "item3"]
}
```

### Accessing All Elements of List

```hcl
output "example_list_output" {
  value = var.example_list
}
```

### Accessing Individual Elements of List

```hcl
output "example_list_first_item" {
  value = var.example_list[0]
}
```

## Map Type

### Definition

A `map` is an unordered collection of key-value pairs. The keys are unique strings, and the values can be of any type. Maps are useful for associating specific values with unique identifiers.

### Variable Definition

```hcl
variable "example_map" {
  description = "An example map variable"
  type        = map(string)
  default     = {
    key1 = "value1"
    key2 = "value2"
    key3 = "value3"
  }
}
```

### Accessing All Values of Map

```hcl
output "example_map_output" {
  value = var.example_map
}
```

### Accessing Individual Elements of Map

```hcl
output "example_map_value_for_key1" {
  value = var.example_map["key1"]
}
```
```


