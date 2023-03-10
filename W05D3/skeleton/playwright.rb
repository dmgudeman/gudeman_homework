

require_relative "plays"

class Playwright < PlayDBConnection
    def self.all
        data = PlayDBConnection.instance.execute("SELECT * FROM playwrights")
        data.map { |datum| Playwright.new(datum) }
    end

    def initialize(options)
        @id = options['id']
        @name = options['name']
        @birth_year = options['birth_year']
        
      end



end