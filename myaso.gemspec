# encoding: utf-8

require File.expand_path('../lib/myaso/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Dmitry Ustalov']
  gem.email         = ['dmitry@eveel.ru']
  gem.description   = 'Myaso is a morphological analysis library in Ruby.'
  gem.summary       = 'Myaso is a morphological analysis and synthesis ' \
                      'library in Ruby.'
  gem.homepage      = 'http://myaso.eveel.ru'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'myaso'
  gem.require_paths = ['lib']
  gem.version       = Myaso::VERSION

  gem.add_dependency 'unicode_utils', '~> 1.3'

  gem.add_development_dependency 'activerecord', '~> 3.0'
  gem.add_development_dependency 'sqlite3', '~> 1.3.6'

  gem.add_development_dependency 'tokyocabinet', '~> 1.29'

  gem.add_development_dependency 'rake', '>= 0.8.7'
  gem.add_development_dependency 'rdoc'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'minitest', '>= 2.11'
  gem.add_development_dependency 'yard'
  gem.add_development_dependency 'redcarpet'
end
