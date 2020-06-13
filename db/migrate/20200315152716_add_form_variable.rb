class AddFormVariable < ActiveRecord::Migration[5.2]
  def change
    add_column :colorstraps, :form_background, :string
    add_column :colorstraps, :inner_background, :string
  end
end
