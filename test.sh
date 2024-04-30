Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_subnet.newsubnet: Destroying... [id=subnet-016181a8999a58cb4]
aws_subnet.newsubnet: Destruction complete after 1s
aws_subnet.newsubnet: Creating...
aws_subnet.newsubnet: Still creating... [10s elapsed]
aws_subnet.newsubnet: Creation complete after 11s [id=subnet-0a5914443d2944510]
module.web_server.aws_instance.Tailor-Server[1]: Creating...
module.web_server.aws_instance.Tailor-Server[0]: Creating...
module.web_server.aws_instance.Tailor-Server[1]: Still creating... [10s elapsed]
module.web_server.aws_instance.Tailor-Server[0]: Still creating... [10s elapsed]
module.web_server.aws_instance.Tailor-Server[0]: Still creating... [20s elapsed]
module.web_server.aws_instance.Tailor-Server[1]: Still creating... [20s elapsed]
module.web_server.aws_instance.Tailor-Server[1]: Still creating... [30s elapsed]
module.web_server.aws_instance.Tailor-Server[0]: Still creating... [30s elapsed]
module.web_server.aws_instance.Tailor-Server[0]: Still creating... [40s elapsed]
module.web_server.aws_instance.Tailor-Server[1]: Still creating... [40s elapsed]
module.web_server.aws_instance.Tailor-Server[1]: Still creating... [50s elapsed]
module.web_server.aws_instance.Tailor-Server[0]: Still creating... [50s elapsed]
module.web_server.aws_instance.Tailor-Server[0]: Creation complete after 52s [id=i-0d103937dcd1ce080]
module.web_server.aws_instance.Tailor-Server[1]: Still creating... [1m0s elapsed]
module.web_server.aws_instance.Tailor-Server[1]: Still creating... [1m10s elapsed]
module.web_server.aws_instance.Tailor-Server[1]: Creation complete after 1m12s [id=i-071bac658ce51d415]

Apply complete! Resources: 3 added, 0 changed, 1 destroyed.

Outputs:

newcpanel_sg_id = "sg-0df86c53b5de7b348"
public_ips = [
  "34.219.34.165",
  "35.90.247.94",
]