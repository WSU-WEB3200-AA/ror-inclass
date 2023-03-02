class AddNotesToFlowers < ActiveRecord::Migration[7.0]
  def change
    add_column :flowers, :notes, :text
  end
end
