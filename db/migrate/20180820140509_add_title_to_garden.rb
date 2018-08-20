class AddTitleToGarden < ActiveRecord::Migration[5.2]
  def change
    add_column :gardens, :title, :string
  end
end
