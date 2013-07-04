gem_package "passenger" do
  action :install
end

%w{curl-devel httpd-devel apr-devel apr-util-devel}.each do |pkg|
  yum_package pkg do
    action :install
  end
end

execute "passenger install" do
  command "passenger-install-apache2-module --auto"
  action :run
end

template "/etc/httpd/conf.d/passenger.conf" do
  source "passenger.conf.erb"
  owner "root"
  group "root"
  mode 0644
end
