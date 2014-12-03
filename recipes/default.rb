#
# Cookbook Name:: lvsf-opsworks-php-cookbook
# Recipe:: default
#
# Copyright (C) 2014 LiveSafe
#

include_recipe 'apt'
include_recipe 'nginx'

package 'vim' do
    action :install
end

package 'nginx' do
    action :upgrade
end

execute "CGI Fix pathinfo" do
    command "sed 's/^;cgi\.fix_pathinfo=1$/cgi.fix_pathinfo=0/' -i #{node[:php_fpm][:base_path]}/php.ini"
    not_if "grep '^cgi\.fix_pathinfo=0$' #{node[:php_fpm][:base_path]}/php.ini"
end
