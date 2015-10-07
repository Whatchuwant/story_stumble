#defines relationship betweeen tables
class User < ActiveRecord::Base
	has_many :posts
	has_one :profile
end

class Post < ActiveRecord::Base
# reference to table must be singular, even if table name is plural
	belongs_to :user
end

class Profile < ActiveRecord::Base
	belongs_to :user
end
