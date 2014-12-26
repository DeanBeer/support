# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nrb/support/version'

Gem::Specification.new do |s|
  s.name          = "nrb-support"
  s.version       = NRB::Support.version
  s.authors       = ["Dean Brundage"]
  s.email         = ["dean@newrepublicbrewing.com"]
  s.summary       = %q{Library used by New Republic Brewing Co}
  s.homepage      = ""
  s.license       = "GPL-3"

  s.required_ruby_version = '>=2'

  s.add_runtime_dependency 'ruby-units'

  s.add_development_dependency "bundler"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "shoulda-matchers"

  s.files = [
              'README.md',
              'LICENSE',
              'lib/ruby_unit_extension.rb',
              'lib/support.rb',
              'lib/support/brand_name_parser.rb',
              'lib/support/concern.rb',
              'lib/support/package_type_parser.rb',
              'lib/support/package_volume_parser.rb',
              'lib/support/version.rb'
            ]


  s.test_files = [
                   'spec/cases/support/brand_name_parser_spec.rb',
                   'spec/cases/support/package_type_parser_spec.rb',
                   'spec/cases/support/package_volume_parser_spec.rb',
                   'spec/cases/support/version_spec.rb',
                   'spec/cases/support_spec.rb',
                   'spec/spec_helper.rb'
                 ]

  s.require_paths = ["lib"]

end
