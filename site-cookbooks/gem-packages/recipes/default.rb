#
# Cookbook Name:: gem-packages
# Recipe:: default
#

%w{bundler pry pry-doc pry-debugger}.each do |package|
  gem_package package do
    gem_binary "#{ENV['HOME']}/.rbenv/shims/gem"
    action :install
  end
end
