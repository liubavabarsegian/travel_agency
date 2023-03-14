class Order < ApplicationRecord
    belongs_to :client
    belongs_to :worker
    has_one :trip

    # validate_presence_of :client_id, :worker_id, :trip_id
end
