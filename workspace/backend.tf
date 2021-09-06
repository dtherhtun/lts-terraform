terraform {
  backend "local" {
    path = "./mystate/terraform.tfstate"
  }
}
