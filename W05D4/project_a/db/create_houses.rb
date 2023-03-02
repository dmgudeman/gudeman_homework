

class CreateHouses < ActiveRecord::Migration[7.0]
    def change
      create_table :houses do |t|
        t.string :address
        
  
        t.timestamps
      end
  
    #   create_table :courses do |t|
    #     t.string :course_name
    #     t.integer :professor_id
  
    #     t.timestamps
    #   end
    end
  end