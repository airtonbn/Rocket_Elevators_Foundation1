class Building < ApplicationRecord
    belongs_to :address
    has_many :interventions
    has_many :building_details
    belongs_to :customer
end
