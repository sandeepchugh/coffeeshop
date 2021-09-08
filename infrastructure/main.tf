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

module "containers" {
    source          = "./modules/containers"
    ecsServiceRole  = module.security.ecsServiceRole
    myLabKeyPair    = module.compute.key_pair_name
    appA            = module.network.appA
    appB            = module.network.appB
    appC            = module.network.appC
    EcsSG           = module.security.EcsSG
    ecsExecutionRoleArn  = module.security.ecsExecutionRoleArn
    ecsInstanceProfileId = module.security.EcsInstanceProfileId
    KoffeeLuvAlbName = module.network.KoffeeLuvAlbName
    KoffeeLuvTGArn = module.network.KoffeeLuvTGArn
}