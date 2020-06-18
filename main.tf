terraform {
  backend "remote" {
    organization = "jmoney8080"

    workspaces {
      name = "example-workspace"
    }
  }
}

resource "null_resource" "terraform-github-actions" {
  triggers = {
    value = "Welcome from terraform github actions PR!!"
  }
}