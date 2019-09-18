class WatchListEntry < ApplicationRecord
    belongs_to :equity

    belongs_to :watchlist
end
