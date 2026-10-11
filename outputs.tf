output "pipeline_schedule_variables_id" {
  description = "Map of id values across all pipeline_schedule_variables, keyed the same as var.pipeline_schedule_variables except keys with no id are omitted"
  value       = { for k, v in gitlab_pipeline_schedule_variable.pipeline_schedule_variables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pipeline_schedule_variables_key" {
  description = "Map of key values across all pipeline_schedule_variables, keyed the same as var.pipeline_schedule_variables except keys with no key are omitted"
  value       = { for k, v in gitlab_pipeline_schedule_variable.pipeline_schedule_variables : k => v.key if v.key != null && length(v.key) > 0 }
}
output "pipeline_schedule_variables_pipeline_schedule_id" {
  description = "Map of pipeline_schedule_id values across all pipeline_schedule_variables, keyed the same as var.pipeline_schedule_variables except keys with no pipeline_schedule_id are omitted"
  value       = { for k, v in gitlab_pipeline_schedule_variable.pipeline_schedule_variables : k => v.pipeline_schedule_id if v.pipeline_schedule_id != null }
}
output "pipeline_schedule_variables_project" {
  description = "Map of project values across all pipeline_schedule_variables, keyed the same as var.pipeline_schedule_variables except keys with no project are omitted"
  value       = { for k, v in gitlab_pipeline_schedule_variable.pipeline_schedule_variables : k => v.project if v.project != null && length(v.project) > 0 }
}
output "pipeline_schedule_variables_value" {
  description = "Map of value values across all pipeline_schedule_variables, keyed the same as var.pipeline_schedule_variables except keys with no value are omitted"
  value       = { for k, v in gitlab_pipeline_schedule_variable.pipeline_schedule_variables : k => v.value if v.value != null && length(v.value) > 0 }
}
output "pipeline_schedule_variables_variable_type" {
  description = "Map of variable_type values across all pipeline_schedule_variables, keyed the same as var.pipeline_schedule_variables except keys with no variable_type are omitted"
  value       = { for k, v in gitlab_pipeline_schedule_variable.pipeline_schedule_variables : k => v.variable_type if v.variable_type != null && length(v.variable_type) > 0 }
}

