module NRB; module Support
  module QuickbooksDateParser

    def parse_quickbooks_date(string, date_class: Range)
      return nil if string.nil?
      range = if string =~ /^Week of/
                parse_week string
              else
                parse_range string
              end

      return date_class.new(*range) if range
    end

  private

    def parse_range(string)
      # Oct 1 - 4, 14
      match = Regexp.new('^(...)\s+([0-9]+)\s+-\s+([0-9]+),\s+([0-9]+)').match(string)
      start  = Date.parse "#{match[1]} #{match[2]} #{match[4]}"
      finish = Date.parse "#{match[1]} #{match[3]} #{match[4]}"
      [start, finish]
    end


    def parse_week(string)
      # Week of Oct 19, 14
      match = Regexp.new('^Week of\s+(...)\s+([0-9]+),\s+([0-9]+)').match(string)
      start  = Date.parse "#{match[1]} #{match[2]} #{match[3]}"
      finish = start + 6
      [start, finish]
    end

end; end
