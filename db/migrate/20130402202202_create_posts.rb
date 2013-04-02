class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.string :poster
      t.integer :votes

      t.timestamps
    end
  end
end
