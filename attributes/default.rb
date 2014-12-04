pool_config = JSON.parse default['php_fpm']['pools']
pool_config['www']['listen'] = '/var/run/php5-fpm.sock'
pool_config['www']['listen.owner'] = 'www-data'
pool_config['www']['listen.group'] = 'www-data'

default['php_fpm']['pools'] = JSON.generate pool_config
