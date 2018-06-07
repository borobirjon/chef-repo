package 'tree' do
	action :install
end
package 'nano' do
	action :install
end

package 'vim' do
	action :install
end

package 'ntp' do
	action :install
end

package 'git' do
	action :install
end

#file '/etc/motd' do
#content "This sever is property of Biron Boro
#HOSTNAME: #{node['hostname']}
#IP ADDRESS: #{node['ipaddress']}
#CPU: #{node['cpu']['0']['mhz']}
#MEMORY: #{node['memory']['total']}
#"
#action :create
#owner 'root'
#group 'root'

template '/etc/motd' do
	source 'template.erb'
	variables(
	:name => 'birjon'
	)
	action :create
	owner 'root'
	group 'root'

end
