# spce/spec_helper.rb
require 'rubygems'
require 'bundler/setup'
require 'rspec'

Dir[File.join(File.dirname(__FILE__), "..", "**/*.rb")].each{|f| require f }

Spec::Runner.configure do |config|
end
