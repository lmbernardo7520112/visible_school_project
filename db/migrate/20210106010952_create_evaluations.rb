class CreateEvaluations < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluations do |t|
      t.string :email
      t.string :evaluator_name
      t.string :curriculum
      t.references :assignment, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
