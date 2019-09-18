class Watchlist < ApplicationRecord
    has_many :watchlistentries
    has_many :equities, through: :watchlistentries
    belongs_to :user
end
