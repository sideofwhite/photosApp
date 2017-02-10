class Photos < ActiveRecord::Base

include HTTParty

base_uri 'https://api.500px.com'

@consumer_key = ENV['CONSUMER_KEY_500PX'] 

def self.popular(page_number)
	get("/v1/photos?consumer_key=#{@consumer_key}&feature=popular&page=#{page_number}")
end


end