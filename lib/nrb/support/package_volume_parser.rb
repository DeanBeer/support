module NRB; module Support
  module PackageVolumeParser

    def parse_package_volume(string, volume_class: RubyUnits::Unit)
      return nil if string.nil?
      matched = match_package_volume(string)
      return volume_class.new(matched) if matched
    end

  private

    def match_package_volume(string)
      [ /(1\/[246]\s*bbl)/i, /(12\s*oz)/i, /(750\s*ml)/i ].each do |regex|
        volume = regex.match(string)
        return volume.captures[0] if volume
      end
    end

  end
end; end
