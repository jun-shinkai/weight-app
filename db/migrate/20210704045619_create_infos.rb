class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.integer :weight,       null:false 
      t.integer :height,       null:false  
      t.integer :bmi               
      t.integer :ave_wei     
      t.references :user,     foreign_key: true
      t.timestamps
    end
  end
end
