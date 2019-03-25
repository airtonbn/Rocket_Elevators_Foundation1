Trestle.admin(:Quote_request_by_month) do
    menu do
      group :statistics, priority: :last do
      item :Quote_request_by_month, icon: "fa fa-bar-chart"
      end
    end
    controller do
      def index

      conn = PG::Connection.open(host: "codeboxx-postgresql.cq6zrczewpu2.us-east-1.rds.amazonaws.com", port: 5432, dbname: "gabriel_chevanel", user: "codeboxx", password: "Codeboxx1!")

      @data1 = conn.exec('SELECT extract(YEAR FROM creationdatecompany) AS YEAR, extract(MONTH FROM creationdatecompany) AS MONTH, COUNT(id)
      FROM factquotes
      GROUP BY  YEAR, MONTH
      ORDER BY  YEAR, MONTH')

      @x1 = @data1.column_values(1)
      @y1 = @data1.column_values(2)


      end
    end
end
