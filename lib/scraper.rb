require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
  attr_accessor :headline, :paragraph, :date
  def scrape_root_page(root_url)
    

    root_page = Nokogiri::HTML(open(root_url)) 
    
    target_url = "http://www.bbc.com/#{root_page.css("div.buzzard-item a").attribute("href").value}"
    target_page = Nokogiri::HTML(open(target_url))
    #binding.pry
    @headline = target_page.css("h1.story-body__h1").text
    @paragraph = target_page.css("p.story-body__introduction").text
    @date = target_page.css("li.mini-info-list__item div").text
    binding.pry

  end

end


Scraper.new.scrape_root_page("http://www.bbc.com/news/world")
