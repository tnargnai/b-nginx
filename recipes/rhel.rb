#
# Cookbook Name:: b-nginx
# Recipe:: default
#
# Copyright (c) 2016 Barclays, All Rights Reserved.

# add the Nginx repository
yum_repository 'nginx' do
  description "Nginx Stable repo"
  baseurl "http://nginx.org/packages/centos/$releasever/$basearch/"
  gpgcheck false
  action :create
end

# Install latest Nginx
package 'nginx' do
  timeout 60
end

# Set service
service "nginx" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable ]
end

# Site Admin
template "/etc/nginx/conf.d/default.conf" do
  source node['b-nginx']['site']['config']
  mode 0644
  owner 'root'
  group 'root'
  variables(
      :domain_name => node['b-nginx']['site']['domain']
  )
  notifies :restart, "service[nginx]"
end
