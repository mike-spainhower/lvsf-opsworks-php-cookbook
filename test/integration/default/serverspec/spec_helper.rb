require 'serverspec'

set :backend, :exec

include SpecInfra::Helper::Exec
include SpecInfra::Helper::DetectOS
