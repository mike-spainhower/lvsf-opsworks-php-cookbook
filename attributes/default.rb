pool_config = JSON.parse default['php_fpm']['pools']
pool_config['www']['user'] = 'www-data'
pool_config['www']['group'] = 'www-data'
pool_config['www']['listen'] = '/var/run/php5-fpm.sock'
pool_config['www']['listen.owner'] = 'www-data'
pool_config['www']['listen.group'] = 'www-data'

default['php_fpm']['pools'] = JSON.generate pool_config

default['lvsf_opsworks_php']['nginx_user'] = 'www-data'
default['lvsf_opsworks_php']['php_app_srv_dir'] = '/usr/share/nginx/www'
