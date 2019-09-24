require_relative '/Users/kstarr/final_project/Forex_Trader/rails-api/config/api.rb'

class ApiController < ApplicationController

    def single
        symbol = params["ticker"] # test case 
        route = "https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=#{symbol}&apikey="
        result = Fetch.get(route)
        # byebug
        render json: result
    end 

    def sectors
        route = "https://www.alphavantage.co/query?function=SECTOR&apikey="
        result = Fetch.get(route)
        render json: result
    end 
    
    def daily 
        symbol = params["ticker"] #test case 
        route = "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=#{symbol}&outputsize=full&apikey="
        result = Fetch.get(route)
        render json: result
    end 

    def intraday
        symbol = params["ticker"]
        route = "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=#{symbol}&interval=5min&&apikey="
        result = Fetch.get(route)
        render json: result
    end 

    def indicator
        indicator = params['indicator']
        symbol = params['symbol']
        route = "https://www.alphavantage.co/query?function=#{indicator}&symbol=#{symbol}&interval=5min&time_period=100&series_type=close&apikey="
        result = Fetch.get(route)
        render json: result
    end 

    def featured 
        stocks = Fetch.featured
        render json: stocks
    end 


    def search
        keywords = "Microsoft" #test case 
        route = "https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=#{keywords}&apikey="
        result = Fetch.get(route)
        render json: result
    end 




end 