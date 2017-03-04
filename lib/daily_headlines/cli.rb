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
      puts "#{i}. #{article.name} #{article.author}"
    end
  end

  def menu
    puts "Enter the number of the article you would like to read, type list to show the list, or type exit to exit"
    input = nil
    while input != "exit"
      input = gets.strip
      if input == "1"
       show_article(0)
      elsif input == "2"
        show_article(1)
      elsif input == "3"
        show_article(2)
      elsif input == "list"
        list_papers
      else
        puts "Unsure...please try again by typing '1', '2', '3' or 'list'."
        puts "If you would like to exit, type 'exit'."
      end
    end
  end

  def show_article(input)
    #puts the description of a certain article
    puts 'NYT'
    @articles = DailyHeadlines::Article.today
      puts @articles[input].URL
  end

  def goodbye
    puts "Check back tomorrow for new headlines!"
  end


end

