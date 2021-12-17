# resource "tfe_workspace" "main" {
#   name              = "go-example-argocd-development"
#   organization      = "dosedecafeine"
#   execution_mode    = "local"
#   auto_apply        = true
#   working_directory = "terraform/"


#   tag_names = [
#     "app",
#     "development"
#   ]
# }

resource "aws_ecr_repository" "main" {
  name                 = var.aws_ecr_repository
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}
