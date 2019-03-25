Trestle.admin(:Contact_request_by_month) do
    menu do
      group :statistics, priority: :last do
      item :Contact_request_by_month, icon: "fa fa-bar-chart"
      end
    end
  
    controller do
      def index


      conn = PG::Connection.open(host: "localhost", port: 5434, dbname: "RocketElevator", user: "postgres", password: "12345")

      @data1 = conn.exec('SELECT extract(YEAR FROM creation_date) AS YEAR, extract(MONTH FROM creation_date) AS MONTH, COUNT(id)
      FROM factcontacts
      GROUP BY  YEAR, MONTH
      ORDER BY  YEAR, MONTH')

      @x1 = @data1.column_values(1)
      @y1 = @data1.column_values(2)

     
      end
    end
  end
