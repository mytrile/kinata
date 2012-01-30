# Kinata

Kinata is simple gem for getting information about cinemas and movies in Sofia

# Installation

    $ gem install kinata

# Usage

## Cinemas

Available cinemas:

* :arena_zapad
* :arena_mall
* :arena_mladost
* :mtel_imax
* :cinema_city
* :euro_cinema
* :vlaikova
* :dom_na_kinoto


```` ruby    
cinema = Kinata::Cinema.new :arena_zapad

cinema.name # Арена Запад

cinema.address # София, ж.к. Илинден, бул. Тодор Александров 64, до метростанция Вардар

cinema.phone # "028127700"

cinema.coordinates # ["23290334", "42705008"]

cinema.movies # [{"name"=>"Весели крачета 2", "id"=>"69921", "dates"=> ["2012-01-30 11:40:00", "2012-01-30 13:40:00", "2012-01-30 15:40:00"]}

````
## Movies

```` ruby
movie = Kinata::Movie.new c.movies.first['id']

movie.name # "Весели крачета 2"

movie.genre # "анимация"
````

### Methods on movie

* name
* image
* language
* translation
* genre
* trailer
* original_title
* features
* comment
* lead
* description
* cinemas

# Author

* Name    - Mitko Kostov
* Email   - mitko.kostov@gmail.com
* Blog    - <http://fireinside.me>
* Twitter - [mytrile]("https://twitter.com/mytrile") 