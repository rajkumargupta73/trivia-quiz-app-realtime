class CreateQuizRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :quiz_rooms do |t|      
      t.string :name, null: false,uniqueness:true
      t.string :description, null: false
      t.string :difficulty, default:''
      t.integer :categoryid, default: 0
      t.integer :timeout, null: false
      t.integer :playerno, null: false
      t.string :username, null:false
      t.boolean :active, default: false
      t.boolean :complete, default:false
      t.string  :winner, default:''
      t.timestamps
    end
    add_index :quiz_rooms, :name
  end
end
