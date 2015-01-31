class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true

	has_many :follows
	has_many :followers, :through => :follows

	has_many :reverse_follows, :class_name => "Follow"
	has_many :reverse_followers, :through => :reverse_follows

	# has_many :following, :class_name => "Follow", :foreign_key => 

	# has_and_belongs_to_many :following, class_name: "Follow",
	# 					 join_table: :follows,
	# 					 foreign_key: :follower_id,
	# 					 association_foreign_key: :following_id

	# has_and_belongs_to_many :followers, class_name: "Follow",
	# 					 join_table: :follows,
	# 					 foreign_key: :follower_id,
	# 					 association_foreign_key: :following_id

end