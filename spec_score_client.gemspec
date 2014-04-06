Gem::Specification.new do |s|
  s.name        = 'SpecScoreClient'
  s.version     = '0.0.0'
  s.summary     = "push data to spec-score"
  s.description = "Rspec-formatter to push your results to SpecScore"
  s.authors     = ["Rene Paulokat"]
  s.email       = 'rene@so36.net'
  s.files       = Dir["lib/*.rb"]
  s.homepage    = 'http://rubygems.org/gems/hola'
  s.license     = 'MIT'
  s.test_files  = Dir['spec/**/*']

  s.add_development_dependency 'rspec'
end
