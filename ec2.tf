module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 2

  ami                    = "ami-0ed05376b59b90e46"
  instance_type          = "t2.micro"
  key_name               = "digitalhouse"
  monitoring             = true
  vpc_security_group_ids = ["sg-05d078a8f8e284928"]
  subnet_id              = "subnet-00de6fb0392bafd07"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
