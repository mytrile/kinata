module Kinata
  class Movie

    def initialize(id)
      @movie = get_movie(id)
    end

    def name
      @movie['name']
    end

    def images
      @movie['images']
    end

    def image
      @movie['image']
    end

    def language
      @movie['language']
    end

    def translation
      @movie['translation']
    end

    def genre
      @movie['genre']
    end

    def trailer
      @cinema['trailer']
    end

    def original_title
      @movie['originalTitle']
    end

    def features
      @movie['features']
    end

    def comment
      @movie['comment']
    end

    def lead
      @movie['lead']
    end

    def description
      @movie['description']
    end

    def cinemas
      @movie['places']
    end

    def id
      @movie['id']
    end

    private

    def get_movie(id)
      url = "http://programata.bg/json/?request=eventDetails&city=1&id=#{id}&category%5Fid=0&l=1"
      data = ::JSON.parse(::HTTParty.get(url))
      data['event']
    end
  end
end
