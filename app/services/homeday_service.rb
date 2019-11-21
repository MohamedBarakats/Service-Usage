class HomedayService
    @connection = Faraday.new(url: 'http://localhost:3000') do |conn|
        conn.response :json, :content_type => /\bjson$/
        conn.adapter Faraday.default_adapter
      end
    def self.search_properties(params)
        @connection.get do |req|                          
            req.url '/api/v1/properties', params
        end
    end
    
end