module Kinata
  class Movies

    def initialize
      @list = get_movies
    end

    def list
      @list
    end

    private

    def get_movies
      url = "http://programata.bg/json/?request=categoryList&page=30&city=0&l=1"
      data = ::JSON.parse(::HTTParty.get(url))
      data['events']
    end
  end
end
