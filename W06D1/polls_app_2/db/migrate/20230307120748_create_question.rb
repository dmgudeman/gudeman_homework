class CreateQuestion < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.text :question, null:false
      t.references :question, null:false, foreign_key: {to_table: :polls}

      t.timestamps
    end
  end
end
