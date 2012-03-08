#
# Cookbook Name:: ec2
# Recipe:: default
#
# Copyright 2011, JusBrasil
# Author: Leonardo Gamas <leogamas@jusbrasil.com.br>
#


Chef::Log.info("Configuring mount points for #{node[:ec2][:instance_type]} instance type")

node[:ec2][:devices][:ephemeral][node[:ec2][:instance_type]].each do |dev|
  directory "#{node[:ec2][:mount_points][dev]}" do
    owner "root"
    group "root"
    recursive true
    mode 0755
  end
  mount "#{node[:ec2][:mount_points][dev]}" do
    device "#{dev}"
    #fstype ""
    #options ""
    action :mount
  end
end