class CreatePandas < ActiveRecord::Migration[5.2]
  def change
    create_table :pandas do |t|
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
