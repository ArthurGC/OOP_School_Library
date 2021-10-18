require_relative './app'

def main
  app = App.new  
  puts 'Welcome to School Library App!'  
  app.ui_init
end

main
