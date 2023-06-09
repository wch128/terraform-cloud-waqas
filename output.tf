# Expose repository and branch information as outputs
output "repo_name" {
  value = github_repository.repo.name
}

output "branch_name" {
  value = github_branch.branch.name
}