# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name         = 'bigcommerce-multitrap'
  s.version      = File.read('VERSION')
  s.date         = Time.now.strftime('%Y-%m-%d')
  s.summary      = 'Allows Signal.trap to have multiple callbacks'
  s.authors      = ['Kyrylo Silin', 'Shaun McCormick']
  s.email        = %w[silin@kyrylo.org shaun.mccormick@bigcommerce.com]
  s.homepage     = 'https://github.com/kyrylo/multitrap'
  s.licenses     = 'Zlib'

  s.require_path = 'lib'
  s.files        = %w[
    lib/multitrap/core_ext.rb
    lib/multitrap/patched_trap.rb
    lib/multitrap/trap.rb
    lib/multitrap.rb
  ]
  s.test_files   = s.files.grep(%r{^(test|spec|features)/})

  s.add_development_dependency 'pry', '~> 0.12'
  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'rspec', '~> 3.9'
  s.add_development_dependency 'rspec_junit_formatter', '>= 0.4'
  s.add_development_dependency 'rspec-wait', '~> 0.0.9'
end
