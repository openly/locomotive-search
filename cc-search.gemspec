Gem::Specification.new do |s|
  s.name        = 'cc-search'
  s.version     = '0.0.1'
  s.date        = '2010-04-28'
  s.summary     = "CC Search"
  s.description = "Search plugin for Locomotive CMS for Currency Cloud website"
  s.authors     = ["Abhilash Hebbar"]
  s.email       = 'abhi.h@openly.co'
  s.files       = ["lib/cc_search.rb"]
  s.homepage    =
    'http://openly.co'
  s.license       = 'MIT'
  s.add_runtime_dependency 'rest-client', "~> 1.6.7"
  s.add_runtime_dependency 'json', "~> 1.8.1"
end