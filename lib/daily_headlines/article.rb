class DailyHeadlines::Article

  attr_accessor :name, :author, :blurb, :URL

  def self.today

   puts "So many articles to read today!"

   article_1 = self.new
   article_1.name = "Fed Chief Sees Rate Increase in March, Earlier Than Expected"
   article_1.author = "Binyamin Appelbaum"
   article_1.blurb = "Janet L. Yellen, the Federal Reserve chairwoman, said Friday that the Fed is likely to raise its benchmark interest rate this month."
   article_1.URL = "https://www.nytimes.com/2017/03/03/business/economy/federal-reserve-interest-rates.html"

   article_2 = self.new
   article_2.name = "Team Trump has a complex web of ties with Russia"
   article_2.author = "Philip Bump"
   article_2.blurb = "Three main Russian entities — Ambassador Sergey Kislyak, the Kremlin and Russian business interests — need to be evaluated in relation to the Trump network, starting with the president."
   article_2.URL = "https://www.washingtonpost.com/news/politics/wp/2017/03/03/the-web-of-relationships-between-team-trump-and-russia/"

   [article_1, article_2]

 end

end 