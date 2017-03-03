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
    puts "Enter the paper you would like to read:"
    input = gets.strip
    if input == "1"
      puts "list of articles from New York Times"
    elsif input == "2"
      puts "list of articles from Wall Street Journal"
    end
  end



end

