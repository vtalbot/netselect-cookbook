include_recipe 'apt'

options = []

if node['netselect']['arch']
  options.insert('-a')
end

if node['netselect']['sources']
  options.insert('-s')
end

if node['netselect']['nonfree']
  options.insert('-n')
end

if node['netselect']['ftp']
  options.insert('-f')
end

if node['netselect']['country']
  options.insert("-c #{node['netselect']['country']}")
end

package 'netselect-apt'

execute 'move sources.list' do
  command 'mv sources.list /etc/apt/sources.list'
  action :nothing
  notifies :run, 'execute[apt-get update]', :immediately
end

cache_netselect = "#{Chef::Config[:file_cache_path]}/netselect"

execute 'find fastest mirror' do
  command "netselect-apt #{node['netselect']['distribution']} #{options.join(' ')}"
  notifies :run, 'execute[move sources.list]', :immediately
  not_if do
    ::File.exists?(cache_netselect)
  end
end

file cache_netselect do
  owner 'root'
  group 'root'
  mode '0644'
  action :create_if_missing
end
