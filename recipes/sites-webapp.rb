#
# Cookbook Name:: b-nginx
# Recipe:: sites-webapp
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Site Admin
template "/etc/nginx/sites-available/#{node['b-nginx']['site']['domain']}" do
  source node['b-nginx']['site']['config']
  mode 0644
  owner 'root'
  group 'root'
  variables(
      :domain_name => node['b-nginx']['domain']
  )
end

nginx_site node['b-nginx']['site']['name'] do
  action :enable
end
