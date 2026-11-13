output "task_lookup_id" {
  description = "Map of id values across all task_lookup, keyed the same as var.task_lookup"
  value       = { for k, v in data.coder_task.task_lookup : k => v.id }
}
output "task_lookup_enabled" {
  description = "Map of enabled values across all task_lookup, keyed the same as var.task_lookup"
  value       = { for k, v in data.coder_task.task_lookup : k => v.enabled }
}
output "task_lookup_prompt" {
  description = "Map of prompt values across all task_lookup, keyed the same as var.task_lookup"
  value       = { for k, v in data.coder_task.task_lookup : k => v.prompt }
}

