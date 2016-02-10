class CreateFights < ActiveRecord::Migration
  def change
    create_table :fights do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
