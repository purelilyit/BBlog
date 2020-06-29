class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :string
      t.string :postcode
      t.string :string

      t.timestamps
    end
  end
end
