require_relative 'cookbook.rb'

test = Cookbook.new('recipes.csv')
p test.all

puts "\n\n"

p Cookbook.all
