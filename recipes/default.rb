#
# Cookbook Name:: railsbox
# Recipe:: default
#
# Copyright (C) 2014 AkitaOnRails
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'chef-locale'
include_recipe 'htop'
include_recipe 'git'
include_recipe 'curl'
include_recipe 'zlib'
include_recipe "imagemagick"
include_recipe "imagemagick::devel"
include_recipe 'java'
include_recipe 'elasticsearch'
include_recipe 'mysql::server'
include_recipe 'mysql::client'
include_recipe 'postgresql::server'
include_recipe 'postgresql::client'
include_recipe 'redis_2_cookbook'
include_recipe 'mongodb'
include_recipe "nodejs::npm"
include_recipe 'user::data_bag'
include_recipe "rvm::vagrant"
include_recipe "rvm::user_install"
include_recipe 'lxmx_oh_my_zsh'

user_account 'vagrant' do
  shell '/usr/bin/zsh'
end

lxmx_oh_my_zsh_user 'vagrant' do
  plugins        %w{git ruby rvm}
  autocorrect    false
  case_sensitive true
end
