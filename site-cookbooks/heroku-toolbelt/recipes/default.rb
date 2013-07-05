#
# Cookbook Name:: heroku-toolbelt
# Recipe:: default
#

bash "install heroku toolbelt" do
  code "wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh"
  not_if "which heroku"
end
