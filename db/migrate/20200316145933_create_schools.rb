class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.integer :user_id
      t.string :name
      t.string :class
      t.string :content
      t.string :evaluation
      t.string :test

      t.timestamps
    end
  end
end
