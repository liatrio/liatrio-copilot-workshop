provider "github" {
    token = var.github_token
    owner = "devopsdays-austin-2024"
}

resource "github_repository" "example_repo" {
    name        = "example-repo"
    description = "Example repository"
    visibility  = "internal"
}


