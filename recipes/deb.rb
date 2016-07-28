#
# Cookbook Name:: b-nginx
# Recipe:: deb
#
# Copyright (c) 2016 Barclays, All Rights Reserved.

include_recipe 'apt'
include_recipe 'nginx'

# Site Admin
template "/etc/nginx/sites-available/#{node['b-nginx']['site']['domain']}" do
  source 'etc/nginx/sites-available/site.conf.erb'
  mode 0644
  owner 'root'
  group 'root'
  variables(
  :app_servers => node['b-nginx']['site']['app_servers'],
  :backend_port => node['b-nginx']['site']['backend_port'],
  :domain_name => node['b-nginx']['site']['domain']
  )
end

nginx_site node['b-nginx']['site']['domain'] do
  action :enable
end
