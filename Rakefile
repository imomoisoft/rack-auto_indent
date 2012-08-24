# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "rack-auto_indent"
  gem.homepage = "http://github.com/imomoisoft/rack-auto_indent"
  gem.license = "MIT"
  gem.summary = %Q{Rack Auto Indent}
  gem.description = %Q{Rack middleware for auto indentation}
  gem.email = "viacheslav.molokov@gmail.com"
  gem.authors = ["Viacheslav Molokov"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new
