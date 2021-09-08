module "network" {
    source = "./modules/network"
}

module "security" {
    source = "./modules/security"
    vpc_id = module.network.vpc_id
}

module "compute" {
    source          = "./modules/compute"
    publicSubnetA   = module.network.publicSubnetA
    appA            = module.network.appA
    appB            = module.network.appB
    appC            = module.network.appC
    BastionSG       = module.security.BastionSG
    AppSG           = module.security.AppSG
}