poolConfig = JSON.parse default["php_fpm"]["pools"]
poolConfig["www"]["listen"] = "/var/run/php5-fpm.sock"

default["php_fpm"]["pools"] = JSON.generate poolConfig
