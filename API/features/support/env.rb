require 'factory_bot'
require 'faker'
require 'httparty'
require 'rspec'

require_relative 'spec_helper/spec_rest'

CONFIG = YAML.safe_load(File.dirname(__FILE__) + "/config/#{ENV['AMBIENTE']}.yml")

World(REST,FactoryBot::Syntax::Methods)