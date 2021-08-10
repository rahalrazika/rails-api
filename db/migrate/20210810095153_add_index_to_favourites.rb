class AddIndexToFavourites < ActiveRecord::Migration[6.1]
  def change
    add_index :favourites, [:user_id, :project_id], unique: true
  end
end

