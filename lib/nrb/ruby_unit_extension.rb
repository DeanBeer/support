require 'ruby_units/namespaced'

RubyUnits::Unit.define 'Barrel' do |bbl|
  bbl.aliases = %w{ BBL BBLS BBLs barrel barrels bbl bbls }
  bbl.definition = RubyUnits::Unit.new '31 gallons'
  bbl.display_name = 'barrel'
end
