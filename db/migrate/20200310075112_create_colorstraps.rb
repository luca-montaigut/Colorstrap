class CreateColorstraps < ActiveRecord::Migration[5.2]
  def change
    create_table :colorstraps do |t|
      t.string :primary
      t.string :secondary
      t.string :success
      t.string :info
      t.string :warning
      t.string :danger

      t.timestamps
    end
  end
end
