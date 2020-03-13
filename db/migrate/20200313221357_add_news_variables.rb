class AddNewsVariables < ActiveRecord::Migration[5.2]
  def change
    add_column :colorstraps, :link_hover, :string
  end
end
