class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :student_name
      t.string :class
      t.string :room
      t.string :city
      t.string :state
      t.text :summary
      t.text :description
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end