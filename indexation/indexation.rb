#!/usr/bin/env ruby
require 'csv'
load 'connect_database.rb'
load 'statement.rb'
load 'word.rb'
load 'occurence.rb'
load 'fill_database.rb'

class Indexation
  # fill_statements()
  fill_words()
end

Indexation.new()