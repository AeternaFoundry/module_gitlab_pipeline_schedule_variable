variable "pipeline_schedule_variables" {
  description = <<EOT
Map of pipeline_schedule_variables, attributes below
Required:
    - key
    - pipeline_schedule_id
    - project
    - value
Optional:
    - variable_type
EOT

  type = map(object({
    key                  = string
    pipeline_schedule_id = number
    project              = string
    value                = string
    variable_type        = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

