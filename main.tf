provider "github" {
  token = var.GITHUB_TOKEN
  owner = "devopsdays-austin-2024"
}

resource "github_repository" "example_repo" {
  name        = "example-repo"
  description = "Example repository"
  visibility  = "internal"
}
