resource "github_repository" "my-repo-using-tf-routchild" {
  name        = var.repo_name
  description = var.repo_description
  visibility  = "public"
  auto_init   =  true
}
resource "github_branch" "main" {
  repository = github_repository.my-repo-using-tf-routchild.name
  branch     = var.branch_name
}
resource "github_branch_protection" "branch" {
  repository_id = github_repository.my-repo-using-tf-routchild.id
  pattern          = "main"

  enforce_admins        = true
  required_status_checks {
    strict   = true

  }

  required_pull_request_reviews {
    dismiss_stale_reviews          = true
    require_code_owner_reviews     = true
    required_approving_review_count = 1
  }

}

