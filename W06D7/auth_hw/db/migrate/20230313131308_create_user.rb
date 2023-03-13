class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null:false, unique:true
      t.string :password_digest, null:false, unique:true
      t.string :session_token, null:false, unique:true

      t.timestamps
    end
    add_index :users, :username
  end
end
