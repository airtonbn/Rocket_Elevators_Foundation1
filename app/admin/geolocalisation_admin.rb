Trestle.admin(:geolocalisation) do
    menu do
      group :informations, priority: :last do
      item :geolocalisation, icon: "fa fa-tachometer"
      end
      
    end
  
    controller do
      def index

        @markers = []

        buildings = Building.all
        buildings.each do |building|

        
            customer = building.building_administrator_full_name
            address = building.address
            batteries = building.batteries.count
            battery_ids = building.battery_ids
            techname = building.building_technical_contact_name
            columns = Column.where(battery_id: battery_ids).count
            column_ids = Column.where(battery_id: building.battery_ids).ids
            elevators = Elevator.where(column_id: column_ids).count
            # nbfloor = building.batteries.columns.floor_number


            @localisation = address.street_number_name + " " + address.city + " " + address.zip_code + " "

            @response = JSON.parse(Faraday.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{@localisation}&key=#{ENV["googlegeo"]}").body)

          badaddresslist = []

          if @response["status"] == "ZERO_RESULTS" 
            badaddresslist << (building.address)
            
          else

            lat = @response["results"][0]["geometry"]["location"]["lat"] 
            lng = @response["results"][0]["geometry"]["location"]["lng"] 

            p "---------------------------------------------------------------"
            p lat   
            p lng
            p "---------------------------------------------------------------"

            

          
            @markers << {
            address: @localisation,
            lat: lat,
            lng: lng,
            customer: customer,
            batteries: batteries,
            columns: columns,
            elevators: elevators,
            techname: techname,
            # nbfloor: nbfloor,
            }
        
          end
        end
      end
    end
  end