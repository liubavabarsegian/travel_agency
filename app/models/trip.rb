class Trip < ApplicationRecord
    has_one :hotel
    has_many :orders
end
