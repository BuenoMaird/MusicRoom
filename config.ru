# This file is used by Rack-based servers to start the application.

require 'YAML' unless defined? YAML

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application