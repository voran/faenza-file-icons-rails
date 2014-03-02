$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "faenza_file_icons_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "faenza-file-icons-rails"
  s.version     = FiletypeIconsFaenzaRails::VERSION
  s.authors     = ["Yavor Stoychev"]
  s.email       = ["stoychev.yavor@gmail.com"]
  s.summary     = "Use Faenza icons for popular file types!"
  s.description = "Bundled Faenza Icons are copyright by their respective owners and redistributed under the terms of the GPL license."

  s.files = Dir["{app,config,db,lib}/**/*", "GPL-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"
  s.license       = 'GPL'
end
