vpc_name         = "django-ecs-vpc"
region           = "us-east-1"
ecs_cluster_name = "django-cluster"
ecs_service_name = "django-service"

vpc_cidr        = "10.0.0.0/16"
public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets = ["10.0.10.0/24", "10.0.20.0/24"]

repository_url = "870597747842.dkr.ecr.us-east-1.amazonaws.com/djangoapp:latest"

tags = {
  Owner       = "terraform"
  Environment = "dev"
}



