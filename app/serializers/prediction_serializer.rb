class PredictionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :equity_id, :price, :date
end
