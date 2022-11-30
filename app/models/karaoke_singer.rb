class KaraokeSinger < ActiveRecord::Base
    has_many :joins
    has_many :songs, through: :joins

    #KaraokeSinger#songs => included in macros

    #KaraokeSinger.last.sing(Song.last)
    def sing(song)
        Join.create(song_id: song[:id], karaoke_singer_id: self.id)
    end

    # KaraokeSinger.last.buy_drink
    def buy_drink
        self.update(number_of_drinks: self.number_of_drinks += 1)
    end

    # KaraokeSinger.last.songs_by_artist("Beyonce")
    def songs_by_artist(artist)
        self.songs.where(artist_name: artist)
    end

    # KaraokeSinger.last.drinks_tab(15)
    def drinks_tab(price_per_drink)
        self.number_of_drinks * price_per_drink
    end

    # KaraokeSinger.total_tab(12)
    def self.total_tab(price_per_drink)
        KaraokeSinger.all.sum do |singer|
            singer.drinks_tab(price_per_drink)
        end
        # self.all would also work
    end
end

