class NewspaperScraper
  def initialize (name)
    @newspaper = Newspaper.new
    @newspaper.name = name
    if name == "NYT"
      @doc = Nokogiri::HTML(open("https://www.nytimes.com/?WT.z_jog=1&hF=t&vS=undefined"))
    elsif name == "WP"
      @doc = Nokogiri::HTML(open("https://www.washingtonpost.com/?reload=true"))
    end

  end


end