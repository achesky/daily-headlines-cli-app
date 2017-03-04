class DailyHeadlines::Article

  attr_accessor :name, :author, :blurb, :URL

  def self.today
    self.scrape_articles
  end

  def self.scrape_articles
    articles = []

    articles << self.scrape_NYT_1

    articles << self.scrape_NYT_2


    articles

 end

 def self.scrape_NYT_1
  doc = Nokogiri::HTML(open("https://www.nytimes.com/?WT.z_jog=1&hF=f&vS=undefined"))

  article = self.new

  article.name = doc.search("#topnews-100000004969948 h2.story-heading").text
  article.author = doc.search("#topnews-100000004969948 p.byline").text
    # prints authors and then the time posted
  # problems with blurb
  #article.blurb = doc.search("#topnews-100000004969948 li")
    #problems with printing out ' & "
  x = doc.search("#topnews-100000004969948 h2.story-heading")
  article.URL = x.at('a').attributes["href"].value

  article

 end

 def self.scrape_NYT_2
  doc = Nokogiri::HTML(open("https://www.nytimes.com/?WT.z_jog=1&hF=f&vS=undefined"))
  article = self.new

  article.name = doc.search("#topnews-100000004969880 h2.story-heading").text
  article.author = doc.search("#topnews-100000004969880 p.byline").text
  x = doc.search("#topnews-100000004969880 h2.story-heading")
  article.URL = x.at('a').attributes["href"].value

  article

 end

 def self.scrape_NYT_3
  doc = Nokogiri::HTML(open("https://www.nytimes.com/?WT.z_jog=1&hF=f&vS=undefined"))
  article = self.new

  article.name = doc.search("#topnews-100000004944660 h2.story-heading").text
  article.author = doc.search("#topnews-100000004944660 p.byline").text
  x = doc.search("#topnews-100000004944660 h2.story-heading")
  article.URL = x.at('a').attributes["href"].value

  return article.URL

end


end 