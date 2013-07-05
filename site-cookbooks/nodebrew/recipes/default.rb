#
# Cookbook Name:: nodebrew
# Recipe:: default
#

bash "setup nodebrew" do
  user node[:current_user]
  group node[:current_user]
  cwd ENV['HOME']
  code <<-EOH
  wget git.io/nodebrew
  perl nodebrew setup
  echo 'export PATH="$HOME/.nodebrew/current/bin:$PATH"' >> $HOME/.profile
  rm nodebrew
  EOH
  not_if { ::File.exists?("#{ENV['HOME']}/.nodebrew") }
end
