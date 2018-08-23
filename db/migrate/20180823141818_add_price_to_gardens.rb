class AddPriceToGardens < ActiveRecord::Migration[5.2]
  def change
    add_column :gardens, :price, :integer
  end
end
