# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "motorcycle/version"

Gem::Specification.new do |s|
  s.name = %q{motorcycle}
  s.version = BrighterPlanet::Motorcycle::VERSION

  s.authors = ["Andy Rossmeissl", "Seamus Abshere", "Ian Hough", "Matt Kling", "Derek Kastner"]
  s.date = %q{2010-10-19}
  s.summary = %q{A carbon model}
  s.description = %q{A software model in Ruby for the greenhouse gas emissions of an motorcycle}
  s.email = %q{andy@rossmeissl.net}
  s.homepage = %q{http://github.com/brighterplanet/motorcycle}

  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_runtime_dependency 'emitter' unless ENV['LOCAL_EMITTER']
  s.add_development_dependency 'sniff' unless ENV['LOCAL_SNIFF']
end
