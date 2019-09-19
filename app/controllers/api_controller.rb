require_relative '/Users/kstarr/final_project/Forex_Trader/rails-api/config/api.rb'

class ApiController < ApplicationController

    def single
        symbol = "AAPL" # test case 
        route = "https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=#{symbol}&apikey="
        result = Fetch.get(route)
        render json: result
    end 

    def sectors
        route = "https://www.alphavantage.co/query?function=SECTOR&apikey="
        result = Fetch.get(route)
        render json: result
    end 
    
    def daily 
        symbol = "AAPL" #test case 
        route = "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=#{symbol}&apikey="
        result = Fetch.get(route)
        render json: result
    end 

    def search
        keywords = "Microsoft" #test case 
        route = "https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=#{keywords}&apikey="
        result = Fetch.get(route)
        render json: result
    end 
end 