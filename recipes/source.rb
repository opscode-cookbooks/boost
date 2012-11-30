include_recipe "build-essential"

remote_file "/tmp/#{node[:boost][:file]}" do
  source node[:boost][:source] + node[:boost][:file]
  mode "0644"
  action :create_if_missing
end

bash "install-boost" do
  user "root"
  cwd "/tmp"
  code <<-EOH
  tar xzvf #{node[:boost][:file]}
  cd #{node[:boost][:build_dir]}
  ./bootstrap.sh && ./bjam install
  EOH
  not_if "/sbin/ldconfig -v | grep boost"
end

execute "ldconfig" do
  user "root"
  command "/sbin/ldconfig"
  action :nothing
end

cookbook_file "/etc/ld.so.conf.d/boost.conf" do
  owner "root"
  group "root"
  mode "0644"
  source "boost.conf"
  backup false
  notifies :run, resources(:execute => "ldconfig"), :immediately
end
