module NRB; module Support
  module PackageSizeParser

    def parse_package_size(string, size_class: RubyUnits::Unit)
      return nil if string.nil?
      matched = match_package_size(string)
      return size_class.new(matched) if matched
    end

  private

    def match_package_size(string)
      [ /(1\/[246]\s*bbl)/i, /(12\s*oz)/i, /(750\s*ml)/i ].each do |regex|
        size = regex.match(string)
        return size.captures[0] if size
      end
    end

  end
end; end
