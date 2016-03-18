

class BreakingNews::Scraper
  
  def scrape_root(root_url)
    
    root_page = Nokogiri::HTML(open(root_url)) 
    
    target_url = "http://www.bbc.com/#{root_page.css("div.buzzard-item a").attribute("href").value}"
    target_page = Nokogiri::HTML(open(target_url))
    h = {}
    h[:headline] = target_page.css("h1.story-body__h1").text
    h[:date] = target_page.css("li.mini-info-list__item div").text
    h[:p1] = target_page.css("div.story-body__inner p:nth-child(1)").text
    h[:p2] = target_page.css("div.story-body__inner p:nth-child(2)").text
    h[:p3] = target_page.css("div.story-body__inner p:nth-child(3)").text
    h[:p4] = target_page.css("div.story-body__inner p:nth-child(4)").text
    h[:p5] = target_page.css("div.story-body__inner p:nth-child(5)").text
    h
    #binding.pry
  end

end


