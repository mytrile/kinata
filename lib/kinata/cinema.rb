module Kinata
  class Cinema

    CINEMAS = {
      :arena_zapad   => 877,
      :arena_mall    => 5981,
      :arena_mladost => 2540,
      :cinema_city   => 3664,
      :euro_cinema   => 6088,
      :mtel_imax     => 3663,
      :vlaikova      => 3,
      :dom_na_kinoto => 29,
    }

    attr_accessor :cinema

    def initialize(name)
      @cinema = get_cinema(name)
    end

    def name
      @cinema["name"]
    end

    def address
      @cinema["address"]
    end

    def phone
      @cinema["phone"]
    end

    def description
      @cinema["description"]
    end

    def coordinates
      [@cinema["lng"], @cinema["lat"]]
    end

    def id
      @cinema["id"]
    end

    def movies
      @cinema["events"]
    end

    def list_cinemas
      CINEMAS.keys
    end 

    private

    def get_cinema(name)
      cinema_id = CINEMAS[name]
      url = "http://programata.bg/json/?request=placeDetails&id=#{cinema_id}&category%5Fid=31&l=1"
      data = ::JSON.parse(::HTTParty.get(url))
      data["place"]
    end
  end
end
