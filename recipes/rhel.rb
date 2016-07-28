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
