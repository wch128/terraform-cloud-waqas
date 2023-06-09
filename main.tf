module "child_module" {
  source            = "./childmodule"
  repo_name         = var.repo_name
  repo_description  = var.repo_description
  branch_name       = var.branch_name
  github_token      = var.github_token
}



