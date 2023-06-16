module "staging_environment" {
        source = "../webserver_py"
        location = "westeurope"
        instance_size = "Standard_F2"
        environment = "stage"
}
