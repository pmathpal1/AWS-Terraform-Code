vpc        = "Hub_VPC"
cidr_block = "10.0.0.0/16"

subnet = [
  { name = "public-subnet", cidr_block = "10.0.0.0/24" },
  { name = "private-subnet", cidr_block = "10.0.1.0/24" }
]
#ports = [22, 80, 443]
#port = [3306]   Application

aws-ec2_instance = [
  { ami = "ami-02a2af70a66af6dfb", instance_type = "t2.micro", name = "Application-EC2" },
{ ami = "ami-0d92749d46e71c34c ", instance_type = "t2.micro", name = "Data-Base-EC2" }]

sg = [ "app_sg" , "db_sg" ]

num = ["0" , "1"]
