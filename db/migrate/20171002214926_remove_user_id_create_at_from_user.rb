class RemoveUserIdCreateAtFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :updated_at, :timestamps,
    add_column :users, :created_at, :timestamps,
    # change_column :user, :created_at, :timestamps, default: 
  end
end
