class TopBar::Bar
    attr_accessor :name, :rank, :location

    @@all = [] #class constant all

    def initialize(att_hash)
        #@name = att_hash(:name)
        #@rank = att_hash(:rank)
        #@location = att_hash(:location)

        att_hash.each do |key, value|
            self.send("#{key}=", value)
        end    
        self.save
    end

    def save
        @@all << self
        self
    end

    def self.all
        @@all
    end

    

end