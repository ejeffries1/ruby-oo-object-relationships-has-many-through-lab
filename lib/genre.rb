require 'pry'

class Genre
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
       Song.all 
    end

    def self.all
        @@all
    end

    def artists
        Song.all.collect do |song|
            song.artist
            #binding.pry 
        end
    end
end
