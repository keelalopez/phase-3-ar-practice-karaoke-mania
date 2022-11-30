class Song < ActiveRecord::Base
    has_many :joins
    has_many :karaoke_singers, through: :joins

    # TEST: Song.first.karaoke_singers
    def self.find_by_artist(artist_name)
        Song.all.filter do |s|
            s.artist_name == artist_name
        end
    end

    # Song.first/second/last.number_of_times_sung
    def number_of_times_sung
        self.karaoke_singers.count
    end
    
end
