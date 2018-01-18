require 'nrb/ruby_unit_extension'
require 'nrb/support/version'
module NRB; module Support

  autoload :Brand,                'nrb/support/brand'
  autoload :BrandNameParser,      'nrb/support/brand_name_parser'
  autoload :Concern,              'nrb/support/concern'
  autoload :PackageTypeParser,    'nrb/support/package_type_parser'
  autoload :PackageVolumeParser,  'nrb/support/package_volume_parser'
  autoload :QuickbooksDateParser, 'nrb/support/quickbooks_date_parser'

end; end
