class AddHouses2 < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :house_id, :integer
  end

end
