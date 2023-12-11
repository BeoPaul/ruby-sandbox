# howdy.rb
require "active_support/all"
require "awesome_print"
require "pry-byebug"


my_string = "Hello world!"
pp my_string

require "./goodbye.rb"
pp 1.ordinalize    # => "1st"
pp 2.ordinalize    # => "2nd"
pp 53.ordinalize   # => "53rd"
pp 2009.ordinalize # => "2009th"
pp -21.ordinalize  # => "-21st"
pp -134.ordinalize # => "-134th"

pp "table".pluralize     # => "tables"
pp "ruby".pluralize      # => "rubies"
pp "equipment".pluralize # => "equipment" 

pp "tables".singularize    # => "table"
pp "rubies".singularize    # => "ruby"
pp "equipment".singularize # => "equipment"

puts "What's your name?"

their_name = gets.chomp

puts "Hello, " + their_name + "!"
