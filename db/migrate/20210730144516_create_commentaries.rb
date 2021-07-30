class CreateCommentaries < ActiveRecord::Migration[6.1]
  def change
    create_table :commentaries do |t|
      t.references :calory, null: false, foreign_key: true
      t.text :Content

      t.timestamps
    end
  end
end
