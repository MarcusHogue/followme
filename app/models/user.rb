class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true

	has_many :follows
	has_many :followings, :through => :follows

    has_many :inverse_follows, :class_name => "Follow", :foreign_key => "following_id"
    has_many :inverse_following, :through => :inverse_follows, :source => :user


end