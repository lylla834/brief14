module "staging_environment" {
        source = "../webservermodule"
        location = "westeurope"
        instance_size = "Standard_F2"
        environment = "stage"
}
