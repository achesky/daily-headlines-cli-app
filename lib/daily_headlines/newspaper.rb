class DailyHeadlines::Newspaper
  attr_accessor :name
  attr_reader :articles

  def initialize
    @articles = []
  end
  

end
