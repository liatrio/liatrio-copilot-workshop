provider "github" {
    token = "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"
    owner = "liatrio"
}

resource "github_repository" "example_repo" {
    name        = "example-repo"
    description = "Example repository"
    visibility  = "internal"
}

resource "github_branch_protection_v3" "example_branch_protection" {
    repository = github_repository.example_repo.name
    branch     = "main"

    enforce_admins = true

    required_pull_request_reviews {
        dismiss_stale_reviews          = true
        require_code_owner_reviews     = true
        required_approving_review_count = 2
    }

    restrictions {
        users = ["user1", "user2"]
    }
}
