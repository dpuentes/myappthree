class CreateCommentaries < ActiveRecord::Migration[6.1]
  def change
    create_table :commentaries do |t|
      t.text :Content

      t.timestamps
    end
  end
end
