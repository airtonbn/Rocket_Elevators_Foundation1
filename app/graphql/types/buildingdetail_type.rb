module Types
    class BuildingdetailType < BaseObject
        field :id, Int, null: false
        field :information_key, String, null: false
        field :value, Int, null: false
    end
  end