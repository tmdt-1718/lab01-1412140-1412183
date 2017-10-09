class AddViewToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :view, :integer
  end
end
