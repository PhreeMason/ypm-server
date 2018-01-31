class CreateMemebers < ActiveRecord::Migration[5.1]
  def change
    create_table :memebers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.date :birthday
      t.string :phone_number

      t.timestamps
    end
  end
end
