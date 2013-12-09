# encoding: utf-8

require 'bundler'
require 'bundler/setup'
require 'thor/foodcritic'
require 'berkshelf/thor'

require 'kitchen/thor_tasks'
Kitchen::ThorTasks.new

require 'emeril/thor_tasks'
Emeril::ThorTasks.new do |t|
  t.config[:category] = "Utilities"
end
