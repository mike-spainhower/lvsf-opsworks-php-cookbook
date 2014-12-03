#
# Cookbook Name:: lvsf-opsworks-php-cookbook
# Recipe:: deploy
#
# This is the app deploy recipe for a PHP app.
#
# Copyright (C) 2014 LiveSafe
#

include_recipe 'deploy'

node[:deploy].each do |application, deploy|
    opsworks_deploy_dir do
        user deploy[:user]
        group deploy[:group]
        path deploy[:deploy_to]
    end

    opsworks_deploy do
        deploy_data deploy
        app application
    end
end
