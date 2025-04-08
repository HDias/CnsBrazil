Gem::Specification.new do |s|
  s.name        = 'cns_brazil'
  s.version     = '1.0.5'
  s.summary     = 'Validate CNS (Cartão Nacional de Saúde)'
  s.description = 'CNS is a national health card from Brazil'
  s.authors     = ['Horecio Araujo Dias', 'Matheus Nascimento Oliveira']
  s.email       = 'horecio@gmail.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features,examples,gemfiles}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = %w[lib]

  s.homepage    = 'https://github.com/HDias/CnsBrazil'
  s.license     = 'MIT'

  s.add_development_dependency 'coveralls', '0.8.23'
  s.add_development_dependency 'rspec', '3.12.0'
  s.add_development_dependency 'rubocop', '1.38.0'
  s.add_development_dependency 'shoulda-matchers', '5.2.0'

  s.add_runtime_dependency 'activemodel'
end
