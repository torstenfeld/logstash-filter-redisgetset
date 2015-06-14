Gem::Specification.new do |s|
  s.name = 'logstash-filter-redisgetset'
  s.version         = '0.1.0'
  s.licenses = ['Apache License (2.0)']
  s.summary = "This filter caches some selected keys in redis."
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Torsten Feld","PERT"]
  s.email           = 'logstash@torsten-feld.de'
  s.homepage        = 'https://github.com/torstenfeld/logstash-filter-redisgetset'
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", '>= 1.4.0', '< 2.0.0'
  s.add_runtime_dependency 'redis', '~> 3.2'

  s.add_development_dependency 'logstash-devutils'
  s.add_development_dependency 'coveralls', '~> 0.8'
  s.add_development_dependency 'simplecov', '~> 0.10'
  s.add_development_dependency 'codecov', '~> 0.0'
end
