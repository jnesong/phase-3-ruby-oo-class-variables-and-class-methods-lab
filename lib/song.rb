class Song

@@count = 0
@@genres = []
@@artists = []

def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count += 1 # increases the count with every .new instance
    @@genres << genre #adds each new genre instance to the class variable @@genres array
    @@artists << artist #adds each new artist instance to the class variable @@ artists array
end

def self.count # the method self.count will get the class variable @@count
    @@count
end 

def self.artists # the method self.artists
    @@artists.uniq #will get the class variable @@artists which is an array and 
    #only return an array without duplicates/of unique artist instances. 
end

def self.genres # the method self.genres
    @@genres.uniq #will get the class variable @@genres which is an array and 
    #only return an array without duplicates/of unique genre instances
end

def self.artist_count 
    artist_count = {}
    @@artists.each do |artist|
        if artist_count[artist]
            artist_count[artist] += 1
        else
            artist_count[artist] = 1
        end
    end
    artist_count
end


    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
          if genre_count[genre]
            genre_count[genre] += 1 
          else
            genre_count[genre] = 1
          end
        end
        genre_count

      end
end