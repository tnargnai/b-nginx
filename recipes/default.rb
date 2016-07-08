#
# Cookbook Name:: b-nginx
# Recipe:: default
#
# Copyright (c) 2016 Barclays, All Rights Reserved.

if platform_family?('rhel')
  include_recipe 'b-nginx::rhel'
end

if platform_family?('debian')
  include_recipe 'b-nginx::deb'
end
