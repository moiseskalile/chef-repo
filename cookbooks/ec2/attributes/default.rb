default[:ec2][:devices][:ephemeral] = {
  "t1.micro"  => [],
  "m1.small"  => [ "/dev/sda2" ],
  "m1.large"  => [ "/dev/sdb", "/dev/sdc" ],
  "m1.xlarge" => [ "/dev/sdb", "/dev/sdc", "/dev/sdd", "/dev/sde" ],
  "c1.xlarge" => [ "/dev/sdb", "/dev/sdc", "/dev/sdd", "/dev/sde" ],
  "m2.xlarge" => [ "/dev/sdb" ]
}

default[:ec2][:mount_points] = {
  "/dev/sda2" => "/mnt" ,
  "/dev/sdb"  => "/mnt" ,
  "/dev/sdc"  => "/media/dev1",
  "/dev/sdd"  => "/media/dev2", 
  "/dev/sde"  => "/media/dev3"
}