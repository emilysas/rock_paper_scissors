require 'rubygems'
require File.join(File.dirname(__FILE__), 'lib/rock_paper_scissors.rb')

run Rock_Paper_Scissors

map "/public" do
  run Rack::Directory.new("./public")
end