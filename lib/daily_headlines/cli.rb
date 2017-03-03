#Our CLI Controller

class DailyHeadlines::CLI 

  def call
    list_papers
    menu
    goodbye
  end

  def list_papers
    puts "Today's Headlines"
    puts <<-DOC.gsub /^\s*/, ''
    1. New York Times (NYT)
    2. Washington Post (WP)
    DOC

    @articles = DailyHeadlines::Article.today
  end

  def menu
    puts "Enter the paper you would like to read or type exit to exit"
    input = nil
    while input != "exit"
      input = gets.strip
      if input == "NYT"
       puts "list of articles from New York Times"
       list_articles_NYT
      elsif input == "WP"
       puts "list of articles from Washington Post"
       list_articles_WP
      elsif input == "list"
        list_papers
      else
        puts "Unsure...please try again by typing 'NYT', 'WP' or 'list'."
        puts "If you would like to exit, type 'exit'"
      end
    end
  end

  def list_articles_NYT
    puts "reading NYT articles"
  end

  def list_articles_WP
    puts "reading WP articles"
  end

  def goodbye
    puts "Check back tomorrow for new headlines!"
  end


end

