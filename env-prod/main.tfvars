env            = "prod"
instance_type  = "t3.small"
zone_id        = "Z08716401XK2LTO5VD1E1"

# vpc
vpc_cidr_block         = "10.20.0.0/24"
default_vpc_cidr       = "172.31.0.0/16"
default_vpc_id         = "vpc-01aafd483f1703257"
default_route_table_id = "rtb-0e1eb6e8bae99c9e7"

frontend_subnets   = ["10.20.0.0/27","10.20.0.32/27"]
backend_subnets    = ["10.20.0.64/27","10.20.0.96/27"]
db_subnets         = ["10.20.0.128/27","10.20.0.160/27"]
public_subnets     = ["10.20.0.192/27","10.20.0.224/27"]
availability_zones = ["us-east-1a", "us-east-1b"]
bastion_nodes      = ["172.31.91.237/32"]
prometheus_nodes   = ["172.31.82.247/32"]
certificate_arn    = "arn:aws:acm:us-east-1:835817189095:certificate/4fde49bf-b032-44b4-a050-672e4d960903"
kms_key_id         = "arn:aws:kms:us-east-1:835817189095:key/cd4d14b0-2220-48ce-8890-5a32c44d3615"

#ASG
max_capacity = 5
min_capacity = 2