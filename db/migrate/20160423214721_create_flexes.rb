class CreateFlexes < ActiveRecord::Migration
  def change
    create_table :flexes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
