class TopBar::Scraper

    def self.scrape_bars
        index_page = Nokogiri::HTML(open("https://www.worlds50bestbars.com/list/1-50"))
        
        array_of_bars = index_page.css("a.item")

        array_of_bars[0...50].each.with_index do |bar_tab|
        attributes = {
            name: bar_tab.css("h2.contenttext_link_1561481").text,
            rank: bar_tab.css("p.contenttext_link_1561479").text,
            location: bar_tab.css("p.contenttext_link_1561480").text
            #:url = 
        }
        bar = TopBar::Bar.new(attributes)
        
        end
    end

    def self.scrape_reviews(movie)
    end
end