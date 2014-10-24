class CreateProjectAdministrations < ActiveRecord::Migration
  def change
    create_table :project_administrations do |t|
      t.integer :project_id
      t.decimal :hours
      t.string :status

      t.timestamps
    end
  end
end
