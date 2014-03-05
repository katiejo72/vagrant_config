include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

include_recipe "users"

execute 'chmod EVERYTHING!!!!' do
  command 'find /opt/rbenv -type d -exec chmod 775 {} \;'
end

rbenv_ruby "2.1.0"

rbenv_gem "bundler" do
  ruby_version "2.1.0"
end
