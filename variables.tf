variable "spanner_database_iam_policies" {
  description = <<EOT
Map of spanner_database_iam_policies, attributes below
Required:
    - database
    - instance
    - policy_data
Optional:
    - project
EOT

  type = map(object({
    database    = string
    instance    = string
    policy_data = string
    project     = optional(string)
  }))
}

