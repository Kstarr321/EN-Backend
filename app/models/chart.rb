class Chart < ApplicationRecord
    belongs_to :user 
    belongs_to :equity
end
