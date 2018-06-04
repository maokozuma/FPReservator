class CreateFps < ActiveRecord::Migration[5.2]
  def change
    create_table :fps do |t|
      t.string :name,  null: false
      t.string :email, null: false

      t.timestamps
    end

    add_index :fps, :email, unique: true
  end
end
