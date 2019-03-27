class Elevator < ApplicationRecord
    belongs_to :column

    def self.inactivecount
        Elevator.where(status: 'inactive').count
    end
end      
