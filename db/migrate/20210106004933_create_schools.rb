class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :school_name
      t.string :gre
      t.string :logo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end