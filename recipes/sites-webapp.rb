#
# Cookbook Name:: b-nginx
# Recipe:: sites-webapp
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Site Admin
template '/etc/nginx/sites-available/webapp.sb.com' do
  source 'etc/nginx/sites-available/webapp.sb.com.erb'
  mode 0644
  owner 'root'
  group 'root'
end

nginx_site 'webapp.sb.com' do
  action :enable
end
