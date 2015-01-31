class ChangeFollowerIdToUserId < ActiveRecord::Migration
  def change
  	change_table :follows do |t|
  		t.rename :follower_id, :user_id
  	end
  end
end
