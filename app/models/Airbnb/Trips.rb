

class Trip
    attr_accessor :guest, :listing
    @@all_trips = []

    def initialize(guest, listing)
        @guest = guest
        @listing = listing
        @@all_trips << self
    end

    def self.all
        @@all_trips
    end 

end 

