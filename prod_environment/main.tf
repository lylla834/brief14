module "Prod_environment" {
  source = "../webservermodule"
 location = "westeurope"
 instance_size = "Standard_F8"
 environment = "prod"
 
}