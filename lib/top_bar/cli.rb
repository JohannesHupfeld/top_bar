class TopBar::CLI
    attr_accessor :sorted_bars #sorted bars as an attribute because we only really use it in the CLI class
    
    def start
        puts "Welcome to the Top Bar app!"
        puts "Here is a list of the top 50 bars in the world" 
        TopBar::Scraper.scrape_bars
        sort_bars
        #scrape all the movie - call the scraper class
        #list the top 100 bars
        list_bars
        puts "Please select the corresponding number (1-50) of the bar you would like more information on:"
        choose_bar
        #ask for input
        #call another method
    end

    def sort_bars
        @sorted_bars = TopBar::Bar.all.sort_by{|bar| bar.name}#parameters to sort by name alphabetically
    end

    def list_bars
        @sorted_bars.each.with_index(1) do |bar,index|
            puts "#{index}. #{bar.name}"
        end
    end

    def choose_bar
        input = gets.strip
        if input.to_i.between?(1,50) #between? is inclusive -thats why it starts at 1 not 0
        else
            puts "Invalid input...Please try again."
            choose_bars# recursion - recalling a method inside a method starts this method over again
        end 


    end

    

    
end 