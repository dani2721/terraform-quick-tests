
# provider block required with Schematics to set VPC region
provider "ibm" {
  region = var.ibm_region
  #ibmcloud_api_key = var.ibmcloud_api_key
  generation = local.generation
  version    = "~> 1.4"
}

data template_file "userdata" {
  template = file("./userdata.yaml")

  vars = {
    username           = var.test_variable
  }
}

