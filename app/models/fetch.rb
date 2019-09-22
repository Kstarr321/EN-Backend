class Fetch < ApplicationRecord

    def self.get(route)
        resp = RestClient.get("#{route}#{API_KEY}")
        json = JSON.parse(resp)
    end 

    def self.get_news(route)
        resp = RestClient.get("#{route}#{NEWS_KEY}")
        json = JSON.parse(resp)

    end


end