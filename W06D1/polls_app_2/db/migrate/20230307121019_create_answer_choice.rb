class CreateAnswerChoice < ActiveRecord::Migration[7.0]
  def change
    create_table :answer_choices do |t|
      t.text :answer_choice, null:false
      t.references :answer_choice, null:false, foreign_key: {to_table: :questions}

      t.timestamps
    end
  end
end
