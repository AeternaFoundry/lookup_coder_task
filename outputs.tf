output "task_lookup_id" {
  description = "Map of id values across all task_lookup, keyed the same as var.task_lookup except keys with no id are omitted"
  value       = { for k, v in data.coder_task.task_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "task_lookup_enabled" {
  description = "Map of enabled values across all task_lookup, keyed the same as var.task_lookup except keys with no enabled are omitted"
  value       = { for k, v in data.coder_task.task_lookup : k => v.enabled if v.enabled != null }
}
output "task_lookup_prompt" {
  description = "Map of prompt values across all task_lookup, keyed the same as var.task_lookup except keys with no prompt are omitted"
  value       = { for k, v in data.coder_task.task_lookup : k => v.prompt if v.prompt != null && length(v.prompt) > 0 }
}

