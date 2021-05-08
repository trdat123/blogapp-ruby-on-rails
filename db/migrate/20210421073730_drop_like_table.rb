class DropLikeTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :likes do |t|
        t.boolean :isLike
        t.integer :user_id
        t.integer :blog_id
        t.timestamps
    end
  end
end
