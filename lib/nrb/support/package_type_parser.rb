module NRB; module Support
  module PackageTypeParser

    def parse_package_type(string, type_class: String)
      return nil if string.nil?
      matched = match_package_type(string)
      return type_class.new(matched) if matched
    end

  private

    def match_package_type(string)
      if string =~ /bbl/i
        'keg'
      elsif string =~ /can\s+case/i
        'can'
      elsif string =~ /22\s*oz/i || string =~ /750\s*ml/i
        'bottle'
      end
    end

  end
end; end
