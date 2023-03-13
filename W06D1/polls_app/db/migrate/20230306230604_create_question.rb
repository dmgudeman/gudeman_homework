class CreateQuestion < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :question, null:false
      t.references :poll, null:false, foreign_key:{to_table: :polls}

      t.timestamps
    end
  end
end
