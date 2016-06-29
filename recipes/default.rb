#
# Cookbook Name:: b-nginx
# Recipe:: default
#
# Copyright (c) 2016 Barclays, All Rights Reserved.

include_recipe 'apt'
include_recipe 'nginx'
include_recipe 'b-nginx::sites-webapp'
