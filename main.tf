module "vpc" {
  source = "./modules/vpc"

  project_name        = var.project_name
  environment         = var.environment
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  availability_zone   = var.availability_zone
}

resource "aws_key_pair" "this" {
  key_name   = "${var.project_name}-${var.environment}-key"
  public_key = file(var.public_key_path)
}

module "ec2" {
  source = "./modules/compute"

  project_name        = var.project_name
  environment         = var.environment
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  subnet_id           = module.vpc.public_subnet_id
  key_name            = aws_key_pair.this.key_name
  aws_region          = var.aws_region
  iam_instance_profile = var.iam_instance_profile
  root_volume_size     = var.root_volume_size

}

