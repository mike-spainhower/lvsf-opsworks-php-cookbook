poolConfig = JSON.parse default["php_fpm"]["pools"]
poolConfig["www"]["listen"] = "/var/run/php5-fpm.sock"
poolConfig["www"]["listen.owner"] = "www-data"
poolConfig["www"]["listen.group"] = "www-data"

default["php_fpm"]["pools"] = JSON.generate poolConfig
