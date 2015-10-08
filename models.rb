#defines relationship betweeen tables
class User < ActiveRecord::Base
	has_many :posts
	has_one :profile
	has_many :follows, foreign_key: :followee_id
end

class Post < ActiveRecord::Base
# reference to table must be singular, even if table name is plural
	belongs_to :user
end

class Profile < ActiveRecord::Base
	belongs_to :user
end

#when we want to see 

class Follow < ActiveRecord::Base
	has_many :follows, foreign_key: :follower_id
end
