require File.expand_path('../lib/kinata/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "kinata"
  s.version = Kinata::VERSION::STRING
  s.description = "Kinata is simple gem for getting info about cinemas in Sofia"
  s.homepage    = "http://github.com/mytrile/kinata"
  s.summary     = s.description
  s.require_paths = ['lib']
  s.author = "Mitko Kostov"
  s.email = "mitko.kostov@gmail.com"
  s.files = [
    "License",
    "README.md",
    "Rakefile",
    "kinata.gemspec",
    "lib/kinata.rb",
    "lib/kinata/cinema.rb",
    "lib/kinata/movie.rb",
    "lib/kinata/movies.rb",
    "lib/kinata/version.rb",
    "spec/kinata_spec.rb"
  ]
  s.add_runtime_dependency "httparty", "~> 0.8.1"
  s.add_runtime_dependency "json", "~> 1.6.5"
  s.add_development_dependency "rspec", "~> 2.0"
end
