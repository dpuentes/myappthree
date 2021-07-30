class CreateCalories < ActiveRecord::Migration[6.1]
  def change
    create_table :calories do |t|
      t.datetime :date_registre
      t.string :Calory_type
      t.string :Value
      t.string :float

      t.timestamps
    end
  end
end
