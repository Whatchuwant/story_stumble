class RevisedBlogApp < ActiveRecord::Migration
  def change
  	add_column :users, :profile_id, :integer
  	remove_column :users, :post_id
  	add_column :posts, :profile_id, :integer
  	remove_column :posts, :user_id
  	add_column :profiles, :post_id, :integer

  	create_table :follows do |t|
	  	t.integer :follower_id
	  	t.integer :followee_id
  	end

  end
end
