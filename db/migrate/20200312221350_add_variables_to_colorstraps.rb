class AddVariablesToColorstraps < ActiveRecord::Migration[5.2]
  def change
    add_column :colorstraps, :background, :string
    add_column :colorstraps, :text_light, :string
    add_column :colorstraps, :text_dark, :string
    add_column :colorstraps, :light, :string
    add_column :colorstraps, :dark, :string
  end
end
