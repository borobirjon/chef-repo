#
# Cookbook Name:: myhaproxy
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

node.default['haproxy']['members'] = [{

		'hostname' => "web1",
		'ipaddress' => "13.127.95.27",
		'port' => 80,
		'ssl_port' => 80

},

{
		'hostname' => "web2",
                'ipaddress' => "52.66.157.232",
                'port' => 80,
                'ssl_port' => 80

}]

include_recipe "haproxy::manual"
