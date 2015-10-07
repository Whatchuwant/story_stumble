#sets columns and rows for table
class BlogApp < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :email
  		t.string :password
  		t.integer :post_id
  	end
  	create_table :posts do |t|
  		t.string :subject
  		t.string :body
  		t.datetime :post_date
  		t.integer :user_id
  	end
  	create_table :profiles do |t|
  		t.integer :user_id
  		t.string :user_name
  		t.string :about
  		t.string :fname
  		t.string :lname
  		t.datetime :birthday
  	end
  end
end
