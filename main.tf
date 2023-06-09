data "terraform_remote_state" "Terraform-cloud-waqas-algo" {
  backend = "remote"

  config = {
    organization = "Waqas-algo"
    workspaces = {
      name = "Terraform-cloud-waqas-algo"
    }
  }
}

# Create a new workspace2-specific repository branch
resource "github_branch" "branch" {
  repository = data.terraform_remote_state.Terraform-cloud-waqas-algo.outputs.repo_name
  name       = "my-branch-in-workspace2"
  
}
