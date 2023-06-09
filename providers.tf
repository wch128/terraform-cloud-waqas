terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 0.15"  # Specify the desired version of the GitHub provider
    }
  }
}

provider "github" {
  token = var.github_token
}

terraform {
  backend "remote" {
    organization = "Waqas-algo"
    workspaces {
      name = "terraform-cloud-waqas"
    }
  }
}


