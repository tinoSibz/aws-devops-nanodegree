# Capstone Project

## Project Background

The tasks is to provision the required cloud infrastructure and deploy a dummy application, along with the necessary supporting software. This needs to be automated so that the infrastructure team can be discarded as soon as the testing team finished their tests and gathers their results.

To test, we will deploy sample website files located in a public s3 bucket to an Apache Web Server running on an EC2 instance. 



## Virtual Private Cloud Architecture

<div align="center">
<img src="img/architecture-diagram.png" alt="Logo">
</div>


## Networking Infrastructure

The following AWS resources will be created:

| Resource                                      | Created          | 
|:----------------------------------------------|:----------------:|
|Virtual Private Cloud (VPC)                    |:heavy_check_mark:|
|Internet Gateway (IGW) and VPC Attachment      |:heavy_check_mark:|
|Subnets (public, private) in Availability Zones|:heavy_check_mark:|
|NAT Gateway with Elastic IPs                   |:heavy_check_mark:|
|Public Subnet Routing through IGW              |:heavy_check_mark:|
|Private Subnet Routing through NAT Gateways    |:heavy_check_mark:|


> To create the network infrastructure run:
```bash
./create.sh udacityp2 network.yaml network-parameters.json af-south-1
```

> To update the network infrastructure run:
```bash
./update.sh udacityp2 network.yaml network-parameters.json af-south-1
```


## Server Infrastructure

The following AWS resources will be created:

| Resource                                      | Created          | 
|:----------------------------------------------|:----------------:|
|Mulitple VPC Security Groups                   |                  |
|Bastion Auto Scaling Group (launching no instances) - in public subnets (public)  |              |     
|Amazon Application Load Balancer (ALB) - in public subnets (public)               |              | 
|Amazon CloudWatch dashboard                                                       |              |


## Troubleshooting

### Deleting all Resources

> To delete all infrastructure run:
```bash
./delete.sh udacityp2
```

### Permissions

While running the AWS commands using either create.sh or update.sh file, if you face permission denied error, then you will have to grant the execute permission to the owner (yourself) explicitly as:

```bash
chmod +x update.sh 
chmod +x create.sh 

```