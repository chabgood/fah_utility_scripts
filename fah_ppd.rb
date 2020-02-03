#!/home/chabgood/.rbenv/shims/ruby
require 'bundler/inline'
require 'net/telnet'

gemfile do
  source 'https://rubygems.org'
  ruby '2.7.0'

  gem 'actionview'
end
require 'action_view'

ppd=nil
  include ActionView::Helpers::NumberHelper

pop = Net::Telnet::new("Host" => "localhost", "Port" => 36330)
pop.cmd("ppd") { |c| ppd = c.scan(/^[0-9]*\.[0-9]*$/).last }
p number_to_human(ppd, precision: 5)
