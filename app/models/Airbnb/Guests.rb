
class Guest
    attr_accessor :name
    @@all_guests = []

    def initialize(name)
        @name = name
        @@all_guests << self
    end 

    def trips
        Trip.all.select {|trip| trip.guest == self}
    end 

    def listings
        trips.map {|trip| trip.listing}
    end
    
    def trip_count
        self.trips.count
    end 

    def self.all
        @@all_guests
    end 

    def self.pro_traveller 
        self.all.filter {|guest| guest.trip_count > 1}
    end 

    def self.find_all_by_name(name)
        self.all.find_all {|guest| guest.name == name}
    end
end  
