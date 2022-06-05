class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, :null => false
      t.string :body, :null => false
      t.boolean :done, :null => false

      t.timestamps
    end
  end
end
