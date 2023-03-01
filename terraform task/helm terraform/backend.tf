terraform {
  cloud {
    organization = "abhishek-successive"
    workspaces {
      name = "module"
    }
  }
}