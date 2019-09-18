class User < ApplicationRecord
    has_secure_password
    # validates :username, uniqueness: { case_sensitive: false }
    # add validations 
    has_many :watchlists
    has_many :predictions
    has_many :charts
end
