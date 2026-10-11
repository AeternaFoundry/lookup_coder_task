variable "task_lookup" {
  description = <<EOT
Map of task_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

