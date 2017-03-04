class DailyHeadlines::Article

  attr_accessor :name, :author, :blurb, :URL

  def self.today
    self.scrape_articles
  end

  def self.create_articles
    articles = []


    articles

 end

 def self.scrape_articles
  doc = Nokogiri::HTML(open("https://www.nytimes.com/?WT.z_jog=1&hF=f&vS=undefined"))
  binding.pry
  


 end

end 