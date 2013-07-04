%w{mysql-server mysql-devel}.each do |package_name|
  package package_name do
    action :install
    version node['mysql']['version']
  end
end

service "mysqld" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end
