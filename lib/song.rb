require 'pry'

class Song

  # Set macros for the initialize args
  attr_accessor :name, :artist, :genre

  # Set global class vars for Song to track with each initialization of Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}

  # Require args for instatiation of a Song
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    # Add args to class vars
    @@count += 1 # I think '+=' failed on an instance var earlier. Will it fail this time?
    @@genres << genre
    @@artists << artist

  end

  # Define getter methods for class Song and evaluate whether args already exist in global class vars, if not, add them
  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    return_genres = {}
    @@genres.each do |genre|
      if return_genres[genre] # If this genre exists in the return hash
        return_genres[genre] += 1
      else
        return_genres[genre] = 1
      end
    end
    return_genres
  end

  def self.artist_count
    return_artists = {}
    @@artists.each do |artist|
      if return_artists[artist] # If this artist exists in the return hash
        return_artists[artist] += 1
      else
        return_artists[artist] = 1
      end
    end
    return_artists
  end

end
