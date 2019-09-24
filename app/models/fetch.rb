class Fetch < ApplicationRecord

    
    def self.get(route)
        resp = RestClient.get("#{route}#{API_KEY}")
        json = JSON.parse(resp)
    end 
    
    def self.get_news(route)
        resp = RestClient.get("#{route}#{NEWS_KEY}")
        json = JSON.parse(resp)
    end
    
    def self.featured
        feat_stocks = ["AAPL", "MSFT", "FB", "TSLA"]
        feat_stocks.map do |stock| 
            resp = RestClient.get("https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=#{stock}&apikey=#{API_KEY}")
            json = JSON.parse(resp)

        end 



    end 


end