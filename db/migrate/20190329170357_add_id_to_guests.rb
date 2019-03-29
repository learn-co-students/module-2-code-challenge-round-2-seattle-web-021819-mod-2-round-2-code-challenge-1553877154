class AddIdToGuests < ActiveRecord::Migration[5.1]
  add_column :guests, :episode_id, :integer
end
