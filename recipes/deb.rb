#
# Cookbook Name:: b-nginx
# Recipe:: deb
#
# Copyright (c) 2016 Barclays, All Rights Reserved.

include_recipe 'apt'
include_recipe 'nginx'

# Site Admin
template "/etc/nginx/sites-available/#{node['b-nginx']['site']['domain']}" do
  source node['b-nginx']['site']['config']
  mode 0644
  owner 'root'
  group 'root'
  variables(
      :domain_name => node['b-nginx']['site']['domain']
  )
end

nginx_site node['b-nginx']['site']['domain'] do
  action :enable
end
