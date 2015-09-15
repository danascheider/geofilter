require File.expand_path('../version.rb', __FILE__)
require File.expand_path('../files.rb', __FILE__)

Gem::Specification.new do |s|
  s.specification_version     = 1 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version
  s.required_ruby_version     = '>= 2.2.2'

  s.name                      = 'geofilter'
  s.version                   = GeoFilterPackage.gem_version
  s.date                      = '2015-09-14'
  s.summary                   = 'GeoFilter gem filters database models by geographic area'
  s.authors                   = ['Dana Scheider']

  s.files                     = GeoFilterPackage.files
  s.require_paths             = ['lib']
  s.test_files                = s.files.select {|path| path =~ /^(spec|features)\/.*\.(rb|feature)/ }
  s.extra_rdoc_files          = %w(README.rdoc)

  s.add_runtime_dependency     'sequel', '~> 4.21'

  s.add_development_dependency 'rspec', '~> 3.2'
  s.add_development_dependency 'bundler', '~> 1.7'
  s.add_development_dependency 'coveralls', '~> 0.7', '>= 0.7.2'
  s.add_development_dependency 'simplecov', '~> 0.10'
  s.add_development_dependency 'rake', '~> 10.4'
  s.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.10'

  s.has_rdoc         = true
  s.homepage         = 'http://github.com/danascheider/geofilter'
  s.rdoc_options     = %w(--line-numbers --inline-source --title Tessitura)
  s.rubygems_version = '1.1.1'
end
