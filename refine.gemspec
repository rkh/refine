Gem::Specification.new do |s|
  s.name        = "refine"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Konstantin Haase"]
  s.email       = ["k.haase@finn.de"]
  s.homepage    = "http://github.com/rkh/refine"
  s.summary     = %q{Start using refine, today. Be ready for Ruby 2.0!}
  s.description = s.summary

  s.rubyforge_project = "refine"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
