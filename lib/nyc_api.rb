require 'net/http'
require 'open-uri'
require 'json'
 
class GetPrograms

    def initialize(url)
      @url = url
    end

  def get_programs
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    JSON.parse(get_programs)
  end

end



