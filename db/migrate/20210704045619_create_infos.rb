class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.float :weight,       null:false 
      t.float :height,       null:false  
      t.float  :bmi               
      t.float  :ave_wei     
      t.references :user,     foreign_key: true
      t.timestamps
    end
  end
end
