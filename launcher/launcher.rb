#!/usr/bin/env ruby

load 'connect_database.rb'
load 'statement.rb'
load 'word.rb'
load 'occurence.rb'
load 'launcher_library.rb'

class Launcher
  def initialize(input)
    times_found = 0
    keys_number = 0
    times_found = Word.find_by_word(input).occurences.to_a.sum(&:number) unless Word.find_by_word(input).nil?
    keys_number = Word.find_by_word(input).statements.count unless Word.find_by_word(input).nil?
    composable = composable(input, Statement.where.not(word: input).map{|s|s.word})
    puts "Found #{times_found} time(s), for #{keys_number} key(s), and composable = #{composable}"
  end
end

input = prompt "Input word: "
beginning = Time.now
Launcher.new(input)
puts "Time elapsed #{Time.now - beginning} seconds"