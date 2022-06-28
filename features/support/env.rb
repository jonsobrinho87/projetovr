require "httparty"
require "yaml"
require "cucumber"

HTTParty::Basement.default_options.update(verify: false)

$profile = ENV['PROFILE']

api_configs = YAML.load_file('./features/support/api.yml')
$api = api_configs[$profile]