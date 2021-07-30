class CreateCalories < ActiveRecord::Migration[6.1]
  def change
    create_table :calories do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :date_registre
      t.string :Calory_type
      t.float :Value

      t.timestamps
    end
  end
end
