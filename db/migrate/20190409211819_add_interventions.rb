class AddInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
      t.integer :id_intervention
      t.integer :author_id
      t.integer :customer_id
      t.integer :building_id
      t.integer :battery_id
      t.integer :column_id
      t.integer :elevator_id
      t.integer :employee_id
      #t.belongs_to :address
      #t.integer :address_id
      t.date :date_start_intervention
      t.date :date_end_intervention
      t.string :results
      t.string :repport
      t.string :statut
      t.timestamps
    end
  end
end
