provider "aws" {
  region = "eu-west-1"
}

terraform{
  backend "local"{
    path="/c/workspacetf"
  }
}