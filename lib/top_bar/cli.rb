class TopBar::CLI
    
    def start
        puts "Welcome to the Top Bar app!"
        puts "Here is a list of the top 50 bars in the world" 
        #scrape all the movie - call the scraper class
        #list the top 100 bars
        TopBar::Scraper.scrape_bars
        list_bars
        #ask for input
        #call another method
    end

    def list_bars
        TopBar::Bar.all.each.with_index(1) do |bar,index|
            puts "#{index}. #{bar.name}"
        end
    end

    
end 