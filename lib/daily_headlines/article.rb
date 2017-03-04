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
  name = doc.search("#topnews-100000004969948 h2.story-heading").text
  author = doc.search("#topnews-100000004969948 p.byline").text
    # prints authors and then the time posted
  blurb = doc.search("#topnews-100000004969948 ul").text
    #problems with printing out ' & "
  url = doc.search("#topnews-100000004969948 h2.a.story-heading").first.attr("href")


  return url

 end

end 