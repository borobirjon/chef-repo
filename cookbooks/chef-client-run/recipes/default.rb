#
# Cookbook Name:: chef-client-run
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.


node.default['chef_client']['init_style'] = 'none'



include_recipe 'chef-client::cron'

