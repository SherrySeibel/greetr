class CreateGreetings < ActiveRecord::Migration
  def change
    create_table :greetings do |t|
      t.string :body, null: false
      t.belongs_to :sender, null: false
      t.belongs_to :receiver, null: false

      t.timestamps null: false
    end
    add_index :greetings, [:sender_id, :receiver_id]
  end
end
