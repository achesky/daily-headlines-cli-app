#Our CLI Controller

class DailyHeadlines::CLI 

  def call
    list_papers
    menu
    goodbye
  end

  def list_papers
    puts "Today's Headlines from The New York Times"

    @articles = DailyHeadlines::Article.today
    @articles.each.with_index(1) do |article, i|
      puts "#{i}. #{article.name} by #{article.author}"
    end
  end

  def menu
    puts "Enter the number of the article you would like to read, type list to show the list, or type exit to exit"
    input = nil
    while input != "exit"
      input = gets.strip
      if input == "1"
       show_article
      elsif input == "2"
        show_article
      elsif input == "list"
        list_papers
      else
        puts "Unsure...please try again by typing '1', '2' or 'list'."
        puts "If you would like to exit, type 'exit'"
      end
    end
  end

  def show_article
    #puts the description of a certain article
    puts 'NYT'
    @articles.each.with_index(1) do |article, i|
      puts "To read more go to #{article.URL}"
    end
  end

  def goodbye
    puts "Check back tomorrow for new headlines!"
  end


end

