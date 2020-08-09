class TopBar::CLI
    
    def start
        puts "Welcome to the Top Bar app!"
        puts "Here is a list of the top 50 bars in the world" 
        TopBar::Scraper.scrape_bars
        #scrape all the movie - call the scraper class
        #list the top 100 bars
        list_bars
        get_bar_method
        #ask for input
        #call another method
    end

    def list_bars
        TopBar::Bar.all.each.with_index(1) do |bar,index|
            puts "#{index}. #{bar.name}"
        end
    end

    def get_bar_method
        puts "Please select a number (1-50) that corresponds to the bar you want more information on:"
    end

    

    
end 