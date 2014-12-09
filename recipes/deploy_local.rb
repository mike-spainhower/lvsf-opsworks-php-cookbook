# Recipe for deploying an app on a local vm (not via opsworks)

git "/tmp/#{node['local_deploy']['app_name']}" do
  repository node['local_deploy']['app_repo']
  revision node['local_deploy']['app_rev']
  action :sync
end

bash 'copy deploy code' do
  code "cp -Rv /tmp/#{node['local_deploy']['app_name']}/* /usr/share/nginx/www/"
end
