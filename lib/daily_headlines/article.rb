class DailyHeadlines::Article

  attr_accessor :name, :author, :blurb, :URL

  def self.today

   article_1 = self.new
   article_1.name = "Fed Chief Sees Rate Increase in March, Earlier Than Expected"
   article_1.author = "Binyamin Appelbaum"
   article_1.blurb = "Janet L. Yellen, the Federal Reserve chairwoman, said Friday that the Fed is likely to raise its benchmark interest rate this month."
   article_1.URL = "https://www.nytimes.com/2017/03/03/business/economy/federal-reserve-interest-rates.html"

   

  [article_1]

 end

end 