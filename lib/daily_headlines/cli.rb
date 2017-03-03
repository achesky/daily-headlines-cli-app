#Our CLI Controller

class DailyHeadlines::CLI 

  def call
    list_papers
    menu
  end

  def list_papers
    puts "Today's Headlines"
    puts <<-DOC.gsub /^\s*/, ''
    1. New York Times
    2. Wall Street Journal
    DOC
  end

  def menu
    puts "Enter the paper you would like to read or type exit to exit"
    input = nil
    while input != "exit"

      input = gets.strip
      if input == "1"
       puts "list of articles from New York Times"
       list_articles_NYT
     elsif input == "2"
       puts "list of articles from Wall Street Journal"
        list_articles_WSJ
      end
    end
  end

  def list_articles_NYT
    puts "reading NYT articles"
  end

  def list_articles_WSJ
    puts "reading WSJ articles"
  end

end

