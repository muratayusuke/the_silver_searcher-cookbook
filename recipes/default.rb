include_recipe "build-essential"

case node.platform_family
when 'debian'
  prereqs = %w(automake pkg-config zlib1g-dev libpcre3-dev)
when 'rhel'
  prereqs = %w(automake pkgconfig zlib zlib-devel pcre pcre-devel)
else
  Chef::Log.warn "Don't know prereqs for #{node.platform_family}; proceeding anyway"
  prereqs = []
end
prereqs.each do |pkg|
  package pkg do
    action :install
  end
end

directory "/usr/local/src" do
  action :create
end

remote_file "/usr/local/src/the_silver_searcher-#{node.the_silver_searcher.version}.tar.gz" do
  action :create
  source "https://github.com/ggreer/the_silver_searcher/archive/#{node.the_silver_searcher.version}.tar.gz"
  mode 00644
  checksum node.the_silver_searcher.checksum
end

execute "untar the_silver_searcher" do
  action :run
  cwd "/usr/local/src"
  command "tar xfvz the_silver_searcher-#{node.the_silver_searcher.version}.tar.gz"
  creates "/usr/local/src/the_silver_searcher-#{node.the_silver_searcher.version}/build.sh"
end

execute "build the_silver_searcher" do
  action :run
  cwd "/usr/local/src/the_silver_searcher-#{node.the_silver_searcher.version}"
  command "./build.sh"
  creates "/usr/local/src/the_silver_searcher-#{node.the_silver_searcher.version}/ag"
end

execute "install the_silver_searcher" do
  action :run
  cwd "/usr/local/src/the_silver_searcher-#{node.the_silver_searcher.version}"
  command "make install"
  creates "/usr/local/bin/ag"
end
