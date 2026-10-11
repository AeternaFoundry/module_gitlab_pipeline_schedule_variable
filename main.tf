resource "gitlab_pipeline_schedule_variable" "pipeline_schedule_variables" {
  for_each = var.pipeline_schedule_variables

  key                  = each.value.key
  pipeline_schedule_id = each.value.pipeline_schedule_id
  project              = each.value.project
  value                = each.value.value
  variable_type        = each.value.variable_type
}

