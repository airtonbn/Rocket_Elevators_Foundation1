class GeolocalisationController < ApplicationController


    def geolocalisation
       
        @marks = []

        buildings = Building.all
        Building.each do |building|

        
            customer = building.building_administrator_full_name
            address = building.address
            battery = building.batteries.count
            battery_ids = building.battery_ids
            columns = Column.where(battery_id: battery_ids).count
            column_ids = Column.where(battery_id: building.battery_ids).ids
            elevators = Elevator.where(column_id: column_ids).count


            @localisation = address.street_number_name + " " + address.zip_code + " " + address.city + " "

            reponse = "https://maps.googleapis.com/maps/api/geocode/json?address=#{@localisation}+CA&key=#{ENV['googlegeo']}"


            lat = ["results"][0]["geometry"]["location"]["lat"] 
            lng = ["results"][0]["geometry"]["location"]["lng"] 

            

            @marks << {

            }
            
        end
    end
end
