# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "google_auth/version"

Gem::Specification.new do |s|
  s.name        = "google_auth"
  s.version     = GoogleAuth::VERSION
  s.authors     = ["Burke Libbey"]
  s.email       = ["burke.libbey@shopify.com"]
  s.homepage    = ""
  s.summary     = %q{Convenience wrapper of omniauth-google-apps}
  s.description = %q{Convenience wrapper for omniauth-google-apps: Makes a lot of assumptions, requires less configuration.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-google-apps'
end
