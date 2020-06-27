class CreatePens < ActiveRecord::Migration[5.2]
  def change
    create_table :pens do |t|
      t.string :title
      t.text :colour

      t.timestamps
    end
  end
end
