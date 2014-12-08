source 'https://supermarket.getchef.com'

metadata

cookbook 'apt', '~> 2.6.0'
cookbook 'php5-fpm', '~> 0.3.2'
cookbook 'nginx', '~> 2.7.4'

group :integration do
  cookbook 'test-helper', path: 'test/fixtures/cookbooks/test-helper'
end
