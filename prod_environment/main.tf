module "Prod_environment" {
  source = "../webserver_py"
 location = "westeurope"
 instance_size = "Standard_F8"
 environment = "prod"
 
}
