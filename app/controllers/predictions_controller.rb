class PredictionsController < ApplicationController

    def create
        stock = Equity.create(symbol: params[:newStock][:ticker])
        prediction = Prediction.create(user_id: current_user.id, equity_id: stock.id, price: params[:info][:price].to_i, date: params[:info][:date])
        render json: {message: "You have successfulyl created a prediction!"}
    end 


end
