workspace "aws_insights" {
  mod_location       = "/home/steampipe/.steampipe/mods/steampipe-mod-aws-insights"
  query_timeout       = 300
  snapshot_location   = "acme/dev"
  workspace_database  = "local"
  search_path         = "aws,aws_1,aws_2,gcp,gcp_1,gcp_2,slack,github"
  search_path_prefix  = "aws_all"
  watch               = true
  max_parallel        = 5
  introspection       = false
  input               = true
  progress            = true
  theme               = "light"  # light, dark, plain
  cache               = true
  cache_ttl           = 300
}


workspace "aws_compliance" {
  mod_location       = "/home/steampipe/.steampipe/mods/steampipe-mod-aws-compliance"
  query_timeout       = 300
  snapshot_location   = "acme/dev"
  workspace_database  = "local"
  search_path         = "aws,aws_1,aws_2,gcp,gcp_1,gcp_2,slack,github"
  search_path_prefix  = "aws_all"
  watch               = true
  max_parallel        = 5
  introspection       = false
  input               = true
  progress            = true
  theme               = "dark"  # light, dark, plain
  cache               = true
  cache_ttl           = 300
}