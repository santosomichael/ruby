class AddZombieIdToTweets < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :zombie_id, :integer
  end
end
