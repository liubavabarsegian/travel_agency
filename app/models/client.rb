class Client < ApplicationRecord
    self.primary_key = :id
    has_many :orders
    
end
