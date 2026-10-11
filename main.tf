resource "google_spanner_database_iam_policy" "spanner_database_iam_policies" {
  for_each = var.spanner_database_iam_policies

  database    = each.value.database
  instance    = each.value.instance
  policy_data = each.value.policy_data
  project     = each.value.project
}

