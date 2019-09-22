require_relative '/Users/kstarr/final_project/Forex_Trader/rails-api/config/api.rb'
class NewsController < ApplicationController

    def general 
        route = "https://stocknewsapi.com/api/v1/category?section=general&items=50&token="
        result = Fetch.get_news(route)
        render json: result
        # byebug
    end 




end
