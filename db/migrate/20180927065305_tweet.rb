class Tweet < ActiveRecord::Migration
  def change
    add_column :tweets, :user_id, :integer, null: true
  end
end
