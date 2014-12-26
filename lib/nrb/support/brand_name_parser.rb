module NRB; module Support
  module BrandNameParser

    extend NRB::Support::Concern

    module ClassMethods
      attr_writer :brands_with_expressions
      def brands_with_expressions
        @brands_with_expressions ||= default_brands_with_expressions
      end
    private
      def default_brands_with_expressions
        { 'Astrolabe'   => /astrolabe/i,
          'Dammit Jim!' => /dammit/i,
          'Kadigan'     => /kadigan/i,
          'Seasonal'    => /seasonal/i,
          'Skylight'    => /skylight/i,
          'Warimono'    => /wari/i,
          'Whipsaw'     => /whipsaw/i,
          'Windlass'    => /windlass/i
        }
      end
    end


    def parse_brand_name(string, brand_class: String)
      return nil if string.nil?
      matched = match_brand_name(string)
      return brand_class.new(matched) if matched
    end

  private

    def brands_with_expressions
      self.class.brands_with_expressions
    end


    def match_brand_name(string)
      matches = brands_with_expressions.each_pair.find do |name,exp|
                  string =~ exp
                end
      matches.nil? ? '' : matches.first
    end

  end
end; end
