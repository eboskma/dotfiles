begin
  require 'awesome_print'
  AwesomePrint.pry!
rescue LoadError
  puts "AwesomePrint not found, install with 'gem install awesome_print'"
end

Pry.config.theme = 'railscasts'
