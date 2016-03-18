class BreakingNews::CLI

  def call 
    intro
    list_choices
    menu
    goodbye
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

  def intro
    puts "********Beep-Beep Beep Beep!********"
    puts "****Breaking News! This just in!****"
    puts ""
  end

  def menu
    puts ""
    puts "Select your region or topic: (1-14)"
    puts ""
    puts "Enter list to see options again."
    puts "Enter exit to end the program."
    input = gets.strip

    case input
      when "1"
        puts "------------World------------"
        display_article("http://www.bbc.com/news/world")
      when "2"
        puts "------------North America------------"
        display_article("http://www.bbc.com/news/world/us_and_canada")
      when "3"
        puts "------------Asia------------"
        display_article("http://www.bbc.com/news/world/asia")
      when "4"
        puts "------------Africa------------"
        display_article("http://www.bbc.com/news/world/africa")
      when "5"
        puts "------------Europe------------"
        display_article("http://www.bbc.com/news/world/europe")
      when "6"
        puts "------------Latin America------------"
        display_article("http://www.bbc.com/news/world/latin_america")
      when "7"
        puts "------------Middle East------------"
        display_article("http://www.bbc.com/news/world/middle_east")
      when "8"
        puts "------------Australia------------"
        display_article("http://www.bbc.com/news/world/australia")
      when "9"
        puts "------------UK------------"
        display_article("http://www.bbc.com/news/uk")
      when "10"
        puts "------------Business------------"
        display_article("http://www.bbc.com/news/business")
      when "11"
        puts "------------Technology------------"
        display_article("http://www.bbc.com/news/technology")
      when "12"
        puts "------------Science------------"
        display_article("http://www.bbc.com/news/science_and_environment")
      when "13"
        puts "------------Entertainment & Arts------------"
        display_article("http://www.bbc.com/news/entertainment_and_arts")
      when "14"
        puts "------------Health------------"
        display_article("http://www.bbc.com/news/health")
      when "exit"
        nil
      when "list"
        list_choices
        menu
      else
        menu
    end
  end

  def goodbye
    puts "Check back later for new articles!"
  end

  def display_article(url)
    page = BreakingNews::Scraper.new.scrape_root(url)
    article = BreakingNews::Article.new(page)
    #binding.pry
    puts "Date: #{article.date}"
    puts ""
    puts "**#{article.headline}**"
    puts ""
    puts ""
    puts article.p1
    puts ""
    puts article.p2
    puts ""
    puts article.p3
    puts ""
    puts article.p4
    puts ""
    puts article.p5
    puts ""
    puts "------------------------------"
    menu
  end

end