

class Listing
    attr_accessor :city 
    @@all_listing = []

    def initialize (city)
        @city = city
        @@all_listing << self
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        trips.map {|trip| trip.guest}
    end
    
    def trip_count
        self.trips.count
    end 
    
    def self.all
        @@all_listing
    end

    def self.find_all_by_city(city)
        @@all_listing.find_all {|listing| listing.city == city}
    end 

    def self.most_popular
        self.all.max_by {|listing| listing.trip_count}
    end 

end 