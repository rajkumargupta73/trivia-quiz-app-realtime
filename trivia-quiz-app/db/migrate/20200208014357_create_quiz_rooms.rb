class CreateQuizRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :quiz_rooms do |t|      
      t.string :name, null: false
      t.string :description, null: false
      t.string :difficulty, null: false
      t.integer :categoryid, null: false
      t.integer :timeout, null: false
      t.integer :playerno, null: false
      t.string :username, null:false
      t.boolean :active, default: false
      t.boolean :complete, default:false
      t.timestamps
    end
    add_index :quiz_rooms, :name
  end
end
