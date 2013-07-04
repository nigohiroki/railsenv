default[:passenger][:version]     = "4.0.5"
default[:passenger][:root_path]   = "/usr/lib/ruby/gems/1.8/gems/passenger-#{passenger[:version]}"
default[:passenger][:module_path] = "#{passenger[:root_path]}/libout/apache2/mod_passenger.so"
