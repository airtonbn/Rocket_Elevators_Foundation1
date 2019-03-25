Trestle.admin(:Elevator_by_client) do
    menu do
      group :statistics, priority: :last do
      item :Elevator_by_client, icon: "fa fa-bar-chart"
      end
    end         
    controller do
      def index

        conn = PG::Connection.open(host: "localhost", port: 5434, dbname: "RocketElevator", user: "postgresql", password: "12345")

        @data1 = conn.exec("SELECT company_name, nb_elevators FROM dimcustomers 
      
        GROUP BY company_name, nb_elevators
        ORDER BY nb_elevators;")

        @x1 = @data1.column_values(0)
        @y1 = @data1.column_values(1)

      end
    end
  end