#Our CLI Controller

class DailyHeadlines::CLI 

  def call
    puts "Today's Headlines"
    list_papers
    menu
  end

  def list_papers
    puts <<-DOC.gsub /^\s*/, ''
    1. New York Times
    2. Wall Street Journal
    DOC
  end

  def menu
    puts "Enter the paper you would like to read:"
  end



end

