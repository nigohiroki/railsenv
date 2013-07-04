include_recipe "apache2"

apache_module "rewrite"

template "railsenv.jp" do
  path "#{node[:apache][:dir]}/sites-available/railsenv.jp"
  source "railsenv.jp.erb"
  owner "apache"
  group "apache"
  mode "0644"
end

execute "site-enabled" do
  command "a2ensite railsenv.jp"
  notifies :restart, resources(:service => "apache2")
end

service "iptables" do
  action :stop
end

