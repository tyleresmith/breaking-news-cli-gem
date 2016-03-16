class BreakingNews::CLI

  def call 
    puts "Beep-Beep Beep Beep"
    puts "Breaking News! This just in!"
    puts ""
    list_choices
    menu
  end

  def list_choices
    puts "1. World"                            ##http://www.bbc.com/news/world
    puts "2. North America"            ##http://www.bbc.com/news/world/us_and_canada
    puts "3. Asia"                 ##http://www.bbc.com/news/world/asia
    puts "4. Africa"                 ##http://www.bbc.com/news/world/africa
    puts "5. Europe"                 ##http://www.bbc.com/news/world/europe
    puts "6. Latin America"            ##http://www.bbc.com/news/world/latin_america
    puts "7. Middle East"              ##http://www.bbc.com/news/world/middle_east
    puts '8. Australia'              ##http://www.bbc.com/news/world/australia
    puts '9. UK'                   ##http://www.bbc.com/news/uk
    puts '10. Business'              ##http://www.bbc.com/news/business
    puts '11. Tech'                ##http://www.bbc.com/news/technology
    puts '12. Science'               ##http://www.bbc.com/news/science_and_environment
    puts '13. Entertainment & Arts'        ##http://www.bbc.com/news/entertainment_and_arts
    puts '14. Health' 
  end

  def menu
    puts ""
    puts "Select your region or topic:"
    puts ""
  end
end