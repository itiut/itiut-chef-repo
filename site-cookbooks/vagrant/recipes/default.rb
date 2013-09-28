#
# Cookbook Name:: vagrant
# Recipe:: default
#

version = '1.3.3'
arch    = 'x86_64'

remote_file "/tmp/vagrant_#{version}_#{arch}.deb" do
  source "http://files.vagrantup.com/packages/db8e7a9c79b23264da129f55cf8569167fc22415/vagrant_#{version}_#{arch}.deb"
  mode 0644
  not_if 'which vagrant'
end

dpkg_package 'vagrant' do
  source "/tmp/vagrant_#{version}_#{arch}.deb"
  action :install
  not_if 'which vagrant'
end
