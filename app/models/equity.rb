class Equity < ApplicationRecord
    has_many :watchlistentries
    has_many :watchlists, through: :watchlistentries
    has_many :predictions
    has_many :charts
end
